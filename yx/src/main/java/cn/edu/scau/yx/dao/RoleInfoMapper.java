package cn.edu.scau.yx.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;

public interface RoleInfoMapper {
	ArrayList<RoleInfo> findRoleByName(String roleName);
	ArrayList<PowerInfo> findPowerListByRoleId(int roleId);
	RoleInfo findByRoleId (int roleId);

	int deleteRoleInfo(@Param("roleId")int roleId);
	
	int insertRoleInfo(RoleInfo roleInfo);
	
	int updateRoleInfo(RoleInfo roleInfo);
	
	ArrayList<RoleInfo> viewRoleInfo();
	
	int insertRolePowerInfo(@Param("list")ArrayList<String> list ,@Param("roleId") int roleId);
	int deleteRolePowerList(@Param("roleId") int roleId);
	
	List<RoleInfo> findAllsByUserId(Integer id);
}
