package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.entity.UserInfo;

public interface UserInfoService {
	ArrayList<UserInfo> findUserByName(String userName);
	int insertUserRoleInfo(ArrayList<String> list , int userId);
	int deleteUserRoleList(int userId);
	/**
	 * 通过ID查找用户信息
	 * @param userId 帐号id
	 * @return int
	 */
	UserInfo findByUserId (int userId);
	/**
	 * 通过ID和密码查看用户信息
	 * @param userId 帐号id pwd 密码password
	 * @return int
	 */
	UserInfo findByUserIdAndPwd (int userId, String pwd);
	/**
	 * 删除用户信息
	 * @param userInfo
	 * @return 
	 */
	int deleteUserInfo(int userId);
	/**
	 * 添加用户信息
	 * @param userInfo
	 * @return 
	 */
	int insertUserInfo(UserInfo userInfo);
	/**
	 * 修改用户信息
	 * @param userInfo
	 * @return 
	 */
	int updateUserInfo(UserInfo userInfo);
	/**
	 * 根据用户信息查询列表
	 * @param account 用户信息
	 * @param current 当前第几页
	 * @return Page 完整分页信息
	 */
		ArrayList<UserInfo> UserInfoList();
}
