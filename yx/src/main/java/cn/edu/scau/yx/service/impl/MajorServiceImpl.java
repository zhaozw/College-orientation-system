package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.MajorMapper;
import cn.edu.scau.yx.entity.Major;
import cn.edu.scau.yx.service.interfaces.MajorService;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午3:42:57
 *@version v1.0
 */
@Service
public class MajorServiceImpl implements MajorService {
	
	@Autowired
	private MajorMapper majorMapper;

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.MajorService#findByMajorName(java.lang.String)
	 */
	@Override
	public List<Major> findByName(String mjname) {
		List<Major> majors = majorMapper.findByName(mjname);
		return majors;
	}
	
	@Override
	public Major findById(int mjid) {
		if(mjid == 0)
			throw new RuntimeException("error!");
		Major major = majorMapper.findById(mjid);
		return major;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.MajorService#insertMajor(cn.edu.scau.yx.entity.Major)
	 */
	@Override
	public Boolean insertMajor(Major major) {
		int count = majorMapper.insertMajor(major);
        if(count != 1){
        	throw new RuntimeException("error");
        }
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.MajorService#updateMajor(cn.edu.scau.yx.entity.Major)
	 */
	@Override
	public Boolean updateMajor(Major major) {
		int count = majorMapper.updateMajor(major);
        if(count != 1){
        	throw new RuntimeException("error");
        }
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.MajorService#deleteMajor(int)
	 */
	@Override
	public Boolean deleteMajor(int mjid) {
		int count = majorMapper.deleteMajor(mjid);
        if(count != 1){
        	throw new RuntimeException("error");
        }
		return true;
	}

	@Override
	public ArrayList<String> findAllMajorNameByDeaprtmentName(String departmentName) {
		// TODO Auto-generated method stub
		return majorMapper.findAllMajorNameByDeaprtmentName(departmentName);
	}

	@Override
	public ArrayList<Major> findMajorsByDepartment(int departmentId) {
		ArrayList<Major> majors = majorMapper.findMajorsByDepartment(departmentId);
		return majors;
	}



}
