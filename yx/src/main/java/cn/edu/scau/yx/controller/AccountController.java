package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.entity.UserInfo;
import cn.edu.scau.yx.service.interfaces.PowerInfoService;
import cn.edu.scau.yx.service.interfaces.RoleInfoService;
import cn.edu.scau.yx.service.interfaces.UserInfoService;
import jdk.internal.org.objectweb.asm.tree.IntInsnNode;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private RoleInfoService roleInfoService;

	@Autowired
	private PowerInfoService powerInfoService;
	
	@Autowired
	private UserInfoService userInfoService;
	

	@RequestMapping("/roleInfo")
	public String roleInfo() {
		return "account/roleInfo";
	}

	@RequestMapping("/powerInfo")
	public String powerInfo() {
		return "account/powerInfo";
	}

	@RequestMapping("/userInfo")
	public String userInfo() {
		return "account/userInfo";
	}
	
	@RequestMapping("/loadRoleListByName/{roleName}")
	public @ResponseBody ArrayList<RoleInfo> loadRoleListByName(@PathVariable("roleName") String roleName) {

		ArrayList<RoleInfo> roleList = roleInfoService.findRoleByName(roleName);
		System.out.println(roleList.toString());
		return roleList;
	}
	
	
	@RequestMapping("/findPowerByName")
	public @ResponseBody ArrayList<PowerInfo> findPowerByName(String powerName) {

		ArrayList<PowerInfo> powerList = powerInfoService.findPowerListByName(powerName);
		//System.out.println(roleList.toString());
		return powerList;
	}
	

	@RequestMapping("/loadPowerList")
	public @ResponseBody ArrayList<PowerInfo> loadPowerList() {
		ArrayList<PowerInfo> list = powerInfoService.PowerInfoList();

		return list;
	}

	@RequestMapping("/loadUserListByName/{userName}")
	public @ResponseBody ArrayList<UserInfo> loadUserListByName(@PathVariable("userName") String userName) {

		ArrayList<UserInfo> userList = userInfoService.findUserByName(userName);
		System.out.println(userList.toString());
		return userList;
	}
	
	@RequestMapping("/loadRoleList")
	public @ResponseBody ArrayList<RoleInfo> loadRoleList() {
		ArrayList<RoleInfo> list = roleInfoService.RoleInfoList();

		return list;
	}
	
	@RequestMapping(value = "/modifiedRole", method = RequestMethod.POST)
	public @ResponseBody String modifiedRole(String modifiedRoleName, Integer modifiedRoleId, String modifiedDescription, String modifiedRoleAuth) {
		String[] roleAuthList = modifiedRoleAuth.split(",");
		ArrayList<String> list = new ArrayList<String>();
		for (int i = 0; i < roleAuthList.length; i++) {
			list.add(roleAuthList[i]);
		}
		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setDescription(modifiedDescription);
		roleInfo.setRoleId(modifiedRoleId);
		roleInfo.setRoleName(modifiedRoleName);
        
		int k = roleInfoService.deleteRolePowerList(modifiedRoleId);
		int i = roleInfoService.updateRoleInfo(roleInfo);
		int j = roleInfoService.insertRolePowerInfo(list, modifiedRoleId);
		
		return "success";
	}
	
	@RequestMapping(value = "/modifiedUser", method = RequestMethod.POST)
	public @ResponseBody String modifiedUser(String modifiedUserName, Integer modifiedUserId, Integer modifiedAge, String modifiedPwd, String modifiedUserAuth) {
		String[] userAuthList = modifiedUserAuth.split(",");
		ArrayList<String> list = new ArrayList<String>();
		for (int i = 0; i < userAuthList.length; i++) {
			list.add(userAuthList[i]);
		}
		UserInfo userInfo = new UserInfo();
		userInfo.setPwd(modifiedPwd);
		userInfo.setAge(modifiedAge);
		userInfo.setUserId(modifiedUserId);
		userInfo.setUserName(modifiedUserName);
        
		int k = userInfoService.deleteUserRoleList(modifiedUserId);
		int i = userInfoService.updateUserInfo(userInfo);
		int j = userInfoService.insertUserRoleInfo(list, modifiedUserId);
		
		return "success";
	}
	
	@RequestMapping(value = "/modifiedPower", method = RequestMethod.POST)
	public @ResponseBody String modifiedPower(String modifiedPowerName, Integer modifiedPowerId, String modifiedDescription) {
		
		PowerInfo powerInfo = new PowerInfo();
		powerInfo.setPowerDescription(modifiedDescription);
		powerInfo.setPowerId(modifiedPowerId);
		powerInfo.setPowerName(modifiedPowerName);
        System.out.println(modifiedDescription+modifiedPowerName+modifiedPowerId);
		int i=powerInfoService.updatePowerInfo(powerInfo);
		if(i>0)
			return "success";
		
		return "error";
	}
	
	
	
	@RequestMapping(value = "/addRole", method = RequestMethod.POST)
	public @ResponseBody String addRole(String roleName, Integer roleId, String description, String roleAuth) {

		String[] roleAuthList = roleAuth.split(",");
		ArrayList<String> list = new ArrayList<String>();
		for (int i = 0; i < roleAuthList.length; i++) {
			list.add(roleAuthList[i]);
		}

		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setDescription(description);
		roleInfo.setRoleId(roleId);
		roleInfo.setRoleName(roleName);

		int i = roleInfoService.insertRoleInfo(roleInfo);

		int j = roleInfoService.insertRolePowerInfo(list, roleId);

		String result = "";
		if (i > 0 && j > 0) {
			result = "success";
		}

		else {
			result = "fail";
		}
		return result;
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public @ResponseBody String addUser(String userName, Integer userId, Integer age, String pwd, String userAuth) {

		String[] userAuthList = userAuth.split(",");
		ArrayList<String> list = new ArrayList<String>();
		for (int i = 0; i < userAuthList.length; i++) {
			list.add(userAuthList[i]);
		}

		UserInfo userInfo = new UserInfo();
		userInfo.setPwd(pwd);
		userInfo.setAge(age);
		userInfo.setUserId(userId);
		userInfo.setUserName(userName);

		int i = userInfoService.insertUserInfo(userInfo);

		int j = userInfoService.insertUserRoleInfo(list, userId);

		String result = "";
		if (i > 0 && j > 0) {
			result = "success";
		}

		else {
			result = "fail";
		}
		return result;
	}
	
	
	@RequestMapping(value = "/addPower", method = RequestMethod.POST)
	public @ResponseBody Integer addPower(String powerName, Integer powerId, String description) {
              PowerInfo powerInfo =new PowerInfo();
               			powerInfo.setPowerDescription(description);
               			powerInfo.setPowerId(powerId);
               			powerInfo.setPowerName(powerName);
              return powerInfoService.insertPowerInfo(powerInfo);
	}
	
	
	
	@RequestMapping("/deleteRoleByRoleId/{roleId}")
	public @ResponseBody Integer deleteRoleByRoleId(@PathVariable("roleId") Integer roleId) {
		

		return roleInfoService.deleteRoleInfo(roleId);
	}
	
	@RequestMapping("/deleteUserByUserId/{userId}")
	public @ResponseBody Integer deleteUserByUserId(@PathVariable("userId") Integer userId) {
		

		return userInfoService.deleteUserInfo(userId);
	}
	
	@RequestMapping("/deletePowerByPowerId/{powerId}")
	public @ResponseBody Integer deletePowerByPowerId(@PathVariable("powerId") Integer powerId) {
		

		return powerInfoService.deletePowerInfo(powerId);
	}
}
