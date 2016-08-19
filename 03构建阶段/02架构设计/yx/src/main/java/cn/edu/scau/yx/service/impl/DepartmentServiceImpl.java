package cn.edu.scau.yx.service.impl;

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
	public Department findByDepartmentName(String dpname) {
		Department department = departmentMapper.findByDepartmentName(dpname);
		return department;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.DepartmentService#insertDepartmentName(cn.edu.scau.yx.entity.Department)
	 */
	public int insertDepartment(Department department) {
		int count = departmentMapper.insertDepartment(department);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}


	public int updateDepartment(Department department) {
		int count = departmentMapper.updateDepartment(department);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	public int deleteDepartment(int dpid) {
		int count = departmentMapper.deleteDepartment(dpid);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

}
