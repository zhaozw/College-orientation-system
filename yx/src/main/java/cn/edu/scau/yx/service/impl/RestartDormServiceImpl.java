package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.RestartDormMapper;
import cn.edu.scau.yx.entity.D;
import cn.edu.scau.yx.entity.DS;
import cn.edu.scau.yx.service.interfaces.RestartDormService;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍模块的service接口实现
 *@date 2016年8月28日上午10:29:39
 *@version v1.0
 */
@Service
public class RestartDormServiceImpl implements RestartDormService {

	@Autowired
	private RestartDormMapper restartDormMapper;
	
	@Override
	public int addDorm(D d) {
		int addCount = restartDormMapper.insertD(d);
		return addCount;
	}

	@Override
	public int delDorm(int areaId, int buildingId, int floorId, int dormId) {
		int delCount = restartDormMapper.delDById(areaId, buildingId, floorId, dormId);
		return delCount;
	}

	@Override
	public List<D> getDormList() {
		List<D> d =restartDormMapper.findAllD();
		return d;
	}

	@Override
	public int addDormStu(DS ds) {
		int addCount = restartDormMapper.insertDS(ds);
		return addCount;
	}

	@Override
	public int delDormStu(int sId) {
		int delCount = restartDormMapper.delDsById(sId);
		return delCount;
	}

	@Override
	public List<DS> getDormStuList() {
		List<DS> ds = restartDormMapper.findAllDs();
		return ds;
	}

	@Override
	public DS getById(int sId) {
		DS ds = restartDormMapper.findDsById(sId);
		return ds;
	}

	@Override
	public int updateById(int sId,DS ds) {
		int updateCount = restartDormMapper.updateDsById(sId,ds);
		return updateCount;
	}

}
