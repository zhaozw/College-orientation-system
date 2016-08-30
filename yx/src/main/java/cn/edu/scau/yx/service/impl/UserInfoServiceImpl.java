package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.UserInfoMapper;
import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.entity.UserInfo;
import cn.edu.scau.yx.service.interfaces.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService{

	@Autowired
	private UserInfoMapper userInfoMapper;
	
	
	@Override
	public ArrayList<UserInfo> findUserByName(String userName) {
		ArrayList<UserInfo> userList=userInfoMapper.findUserByName(userName);
		
		for(int i=0;i<userList.size();i++){
			int userId=userList.get(i).getUserId();
			ArrayList<RoleInfo>  roleList=userInfoMapper.findRoleListByUserId(userId);
			userList.get(i).setRoleList(roleList);
		}
		return userList;
	}

	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#findByUserId(java.lang.String)
	 */
	public UserInfo findByUserId(int userId) {
		UserInfo UserInfo = userInfoMapper.findByUserId(userId);
		return UserInfo;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#findByUserIdAndPwd(java.lang.String)
	 */
	public UserInfo findByUserIdAndPwd(int userId, String pwd) {
		UserInfo UserInfo = userInfoMapper.findByUserIdAndPwd(userId, pwd);
		return UserInfo;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#deleteUserInfo(cn.edu.scau.yx.entity.UserInfo)
	 */
	public int deleteUserInfo(int userId) {
		int count = userInfoMapper.deleteUserInfo(userId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#insertUserInfo(cn.edu.scau.yx.entity.UserInfo)
	 */
	public int insertUserInfo(UserInfo userInfo) {
		int count = userInfoMapper.insertUserInfo(userInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#updateUserInfo(cn.edu.scau.yx.entity.UserInfo)
	 */
	public int updateUserInfo(UserInfo userInfo) {
		int count = userInfoMapper.updateUserInfo(userInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.UserInfoService#UserInfoList(cn.edu.scau.yx.entity.UserInfo)
	 */
	public ArrayList<UserInfo> UserInfoList() {
		
		ArrayList<UserInfo> list = userInfoMapper.viewUserInfo();
		
		return list;
	}


	@Override
	public int insertUserRoleInfo(ArrayList<String> list, int userId) {
		// TODO Auto-generated method stub
		return userInfoMapper.insertUserRoleInfo(list, userId);
	}


	@Override
	public int deleteUserRoleList(int userId) {
		// TODO Auto-generated method stub
		return userInfoMapper.deleteUserRoleList(userId);
	}

	
}
