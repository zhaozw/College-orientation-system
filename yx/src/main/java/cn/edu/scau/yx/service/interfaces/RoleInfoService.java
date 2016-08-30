package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.entity.UserInfo;

public interface RoleInfoService {
	ArrayList<RoleInfo> findRoleByName(String roleName);
	int insertRolePowerInfo(ArrayList<String> list , int roleId);
	int deleteRolePowerList(int roleId);
	/**
	 * 查看角色信息
	 * @param roleId 帐号id
	 * @return int
	 */
	RoleInfo findByRoleId (int roleId);
	/**
	 * 删除用户信息
	 * @param roleInfo
	 * @return 
	 */
	int deleteRoleInfo(int roleId);
	/**
	 * 添加角色信息
	 * @param roleInfo
	 * @return 
	 */
	int insertRoleInfo(RoleInfo roleInfo);
	/**
	 * 修改角色信息
	 * @param roleInfo
	 * @return 
	 */
	int updateRoleInfo(RoleInfo roleInfo);
	/**
	 * 根据角色信息查询列表
	 * @param account 角色信息
	 * @param current 当前第几页
	 * @return Page 完整分页信息
	 */
		ArrayList<RoleInfo> RoleInfoList();
		
	
		/**
		 * 
		 * @param userId
		 * @return
		 */
	List<RoleInfo> getAllRoleInfosByUserId(int userId);
}
