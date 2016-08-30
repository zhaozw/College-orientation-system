package cn.edu.scau.yx.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.PowerInfo;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月17日下午3:08:58
 *@version v1.0
 */

public interface PowerInfoMapper {

	PowerInfo findByPowerId (int powerId);

	int deletePowerInfo(int powerId);
	
	int insertPowerInfo(PowerInfo powerInfo);
	
	int updatePowerInfo(PowerInfo powerInfo);
	
	ArrayList<PowerInfo> viewPowerInfo();
	
	ArrayList<PowerInfo>  findPowerListByName(String powerName);
}
