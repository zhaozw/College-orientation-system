package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
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
	 * @see cn.edu.scau.yx.service.interfaces.DepartmentService#findByName(java.lang.String)
	 */
	public List<Department> findByName(String dpname) {
		if(dpname == null){
			dpname = "";
		}
		List<Department> departments = departmentMapper.findByName(dpname);
		return departments;
	}
	
	@Override
	public Department findById(int dpid) {
		if(dpid == 0)
			throw new RuntimeException("error!");
		Department department = departmentMapper.findById(dpid);
		return department;
	}

	/* 
	 * @see cn.edu.scau.yx.service.interfaces.DepartmentService#insertDepartment(cn.edu.scau.yx.entity.Department)
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

	@Override
	public ArrayList<String> findAllDepartmentName() {
		ArrayList<String> departmentList=departmentMapper.findAllDepartmentName();
		return departmentList;
	}
	
	public ArrayList<Department> findAllDepartment() {
		ArrayList<Department> departmentList=departmentMapper.findAllDepartment();
		return departmentList;
	}
}
