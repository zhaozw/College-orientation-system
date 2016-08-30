package cn.edu.scau.yx.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.UserInfo;
import cn.edu.scau.yx.entity.RoleInfo;

public interface UserInfoMapper {
	ArrayList<UserInfo> findUserByName(String userName);
    ArrayList<RoleInfo> findRoleListByUserId(int userId);
	UserInfo findByUserId (int userId);
	UserInfo findByUserIdAndPwd (@Param("userId")int userId, @Param("pwd")String pwd);

	int deleteUserInfo(@Param("userId")int userId);
	
	int insertUserInfo(UserInfo userInfo);
	
	int updateUserInfo(UserInfo userInfo);
	
	ArrayList<UserInfo> viewUserInfo();
	
	int insertUserRoleInfo(@Param("list")ArrayList<String> list ,@Param("userId") int userId);
	int deleteUserRoleList(@Param("userId") int userId);
}
