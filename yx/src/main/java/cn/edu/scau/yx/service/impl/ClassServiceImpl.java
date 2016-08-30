package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.ClassMapper;
import cn.edu.scau.yx.entity.Class;
import cn.edu.scau.yx.service.interfaces.ClassService;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午3:59:44
 *@version v1.0
 */
@Service
public class ClassServiceImpl implements ClassService {
	@Autowired
	private ClassMapper classMapper;

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.ClassService#findByClassName(java.lang.String)
	 */
	@Override
	public List<Class> findByName(String clname) {
		List<Class> clazz = classMapper.findByName(clname);
		return clazz;
	}
	
	@Override
	public Class findById(int clid) {
		if(clid == 0)
			throw new RuntimeException("error!");
		Class clazz = classMapper.findById(clid);
		return clazz;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.ClassService#insertClass(cn.edu.scau.yx.entity.Class)
	 */
	@Override
	public Boolean insertClass(Class clazz) {
		int count = classMapper.insertClass(clazz);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.ClassService#updateClass(cn.edu.scau.yx.entity.Class)
	 */
	@Override
	public Boolean updateClass(Class clazz) {
		int count = classMapper.updateClass(clazz);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.ClassService#deleteClass(int)
	 */
	@Override
	public Boolean deleteClass(int clid) {
		int count = classMapper.deleteClass(clid);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	@Override
	public ArrayList<String> findAllClassNameByMajorName(String majorName) {
	
		return classMapper.findAllClassNameByMajorName(majorName);
	}

	@Override
	public ArrayList<Class> findClass(int majorId, int gradeId) {
		return classMapper.findClass(majorId, gradeId);
	}


}
