package cn.edu.scau.yx.service.interfaces;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.PowerInfo;


/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月22日上午11:12:15
 *@version v1.0
 */

public interface PowerInfoService {

	/**
	 * 查看权限信息
	 * @param powerId 帐号id
	 * @return int
	 */
	PowerInfo findByPowerId (int powerId);
	/**
	 * 删除权限信息
	 * @param powerInfo
	 * @return 
	 */
	int deletePowerInfo(int powerId);
	/**
	 * 添加权限信息
	 * @param powerInfo
	 * @return 
	 */
	int insertPowerInfo(PowerInfo powerInfo);
	/**
	 * 修改权限信息
	 * @param powerInfo
	 * @return 
	 */
	int updatePowerInfo(PowerInfo powerInfo);
	/**
	 * 根据权限信息查询列表
	 * @param account 权限信息
	 * @param current 当前第几页
	 * @return Page 完整分页信息
	 */
		ArrayList<PowerInfo> PowerInfoList();
		
		
		
		ArrayList<PowerInfo> findPowerListByName(@Param("PowerName") String powerName);
}
