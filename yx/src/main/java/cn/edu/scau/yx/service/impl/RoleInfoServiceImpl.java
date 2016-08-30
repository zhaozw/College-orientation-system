package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.RoleInfoMapper;
import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.service.interfaces.RoleInfoService;

@Service
public class RoleInfoServiceImpl implements RoleInfoService{

	@Autowired
	private RoleInfoMapper roleInfoMapper;
	
	
	@Override
	public ArrayList<RoleInfo> findRoleByName(String roleName) {
		ArrayList<RoleInfo> roleList=roleInfoMapper.findRoleByName(roleName);
		
		for(int i=0;i<roleList.size();i++){
			int roleId=roleList.get(i).getRoleId();
			ArrayList<PowerInfo>  powerList=roleInfoMapper.findPowerListByRoleId(roleId);
			roleList.get(i).setPowerList(powerList);
		}
		return roleList;
	}

	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.RoleInfoService#findByRoleId(java.lang.String)
	 */
	public RoleInfo findByRoleId(int roleId) {
		RoleInfo RoleInfo = roleInfoMapper.findByRoleId(roleId);
		return RoleInfo;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.RoleInfoService#deleteRoleInfo(cn.edu.scau.yx.entity.RoleInfo)
	 */
	public int deleteRoleInfo(int roleId) {
		int count = roleInfoMapper.deleteRoleInfo(roleId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.RoleInfoService#insertRoleInfo(cn.edu.scau.yx.entity.RoleInfo)
	 */
	public int insertRoleInfo(RoleInfo roleInfo) {
		int count = roleInfoMapper.insertRoleInfo(roleInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.RoleInfoService#updateRoleInfo(cn.edu.scau.yx.entity.RoleInfo)
	 */
	public int updateRoleInfo(RoleInfo roleInfo) {
		int count = roleInfoMapper.updateRoleInfo(roleInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.RoleInfoService#RoleInfoList(cn.edu.scau.yx.entity.RoleInfo)
	 */
	public ArrayList<RoleInfo> RoleInfoList() {
		
		ArrayList<RoleInfo> list = roleInfoMapper.viewRoleInfo();
		
		return list;
	}


	@Override
	public int insertRolePowerInfo(ArrayList<String> list, int roleId) {
		// TODO Auto-generated method stub
		return roleInfoMapper.insertRolePowerInfo(list, roleId);
	}


	@Override
	public int deleteRolePowerList(int roleId) {
		// TODO Auto-generated method stub
		return roleInfoMapper.deleteRolePowerList(roleId);
	}

	@Override
	public List<RoleInfo> getAllRoleInfosByUserId(int userId) {
		List<RoleInfo> roleInfos = roleInfoMapper.findAllsByUserId(userId);
		return roleInfos;
	}
	
}
