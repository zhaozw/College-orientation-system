package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.DepartmentMapper;
import cn.edu.scau.yx.entity.Department;
import cn.edu.scau.yx.service.interfaces.DepartmentService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月18日上午9:40:37
 *@version v1.0
 */
@Service
public class DepartmentServiceImpl implements DepartmentService {
	
	@Autowired
    private DepartmentMapper departmentMapper; 
    
	/* 
	 * @see cn.edu.scau.yx.service.interfaces.DepartmentService#findByDepartmentName(java.lang.String)
	 */
	public List<Department> findByDepartmentName(String dpname) {
		List<Department> departments = departmentMapper.findByDepartmentName(dpname);
		return departments;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.DepartmentService#insertDepartmentName(cn.edu.scau.yx.entity.Department)
	 */
	public Boolean insertDepartment(Department department) {
		int count = departmentMapper.insertDepartment(department);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return true;
	}


	public Boolean updateDepartment(Department department) {
		int count = departmentMapper.updateDepartment(department);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return true;
	}

	public Boolean deleteDepartment(int dpid) {
		int count = departmentMapper.deleteDepartment(dpid);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return true;
	}

}
