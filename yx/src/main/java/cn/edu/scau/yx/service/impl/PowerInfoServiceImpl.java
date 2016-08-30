package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.PowerInfoMapper;
import cn.edu.scau.yx.entity.PowerInfo;
import cn.edu.scau.yx.service.interfaces.PowerInfoService;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月22日上午11:14:52
 *@version v1.0
 */

@Service
public class PowerInfoServiceImpl implements PowerInfoService {



	@Autowired
    private PowerInfoMapper PowerInfoMapper; 
    
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.PowerInfoService#findByPowerId(java.lang.String)
	 */
	@Override
	public PowerInfo findByPowerId(int powerId) {
		PowerInfo PowerInfo = PowerInfoMapper.findByPowerId(powerId);
		return PowerInfo;
	}
	
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.PowerInfoService#deletePowerInfo(cn.edu.scau.yx.entity.PowerInfo)
	 */
	@Override
	public int deletePowerInfo(int powerId) {
		int count = PowerInfoMapper.deletePowerInfo(powerId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.PowerInfoService#insertPowerInfo(cn.edu.scau.yx.entity.PowerInfo)
	 */
	@Override
	public int insertPowerInfo(PowerInfo powerInfo) {
		int count = PowerInfoMapper.insertPowerInfo(powerInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.PowerInfoService#updatePowerInfo(cn.edu.scau.yx.entity.PowerInfo)
	 */
	@Override
	public int updatePowerInfo(PowerInfo powerInfo) {
		int count = PowerInfoMapper.updatePowerInfo(powerInfo);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.PowerInfoService#PowerInfoList(cn.edu.scau.yx.entity.PowerInfo)
	 */
	public ArrayList<PowerInfo> PowerInfoList() {
		
		ArrayList<PowerInfo> list = PowerInfoMapper.viewPowerInfo();
		
		return list;
	}

	@Override
	public ArrayList<PowerInfo> findPowerListByName(String powerName) {
		return PowerInfoMapper.findPowerListByName(powerName);
	}
}
