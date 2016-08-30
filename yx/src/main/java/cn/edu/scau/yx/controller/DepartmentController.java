package cn.edu.scau.yx.controller;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Department;
import cn.edu.scau.yx.service.interfaces.DepartmentService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月18日上午10:13:24
 *@version v1.0
 */
@Controller
@RequestMapping("/education/department")
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping("/addDepartment")
	public String addDepartment(){
		return "education/addDepartment";
	}
	
	@RequestMapping("/findDepartment")
	public String findDepartment(){
		return "education/findDepartment";
	}
	
	@RequestMapping("/index")
	public String home(){
		return "education/index";
	}
	
	@RequestMapping("/find")
	public @ResponseBody ArrayList<Department> findByName(String dpname) {
		if(dpname == null){
			dpname = "";
		}
		ArrayList<Department> departments = (ArrayList<Department>) departmentService.findByName(dpname);
		return departments;
	}
	
	@RequestMapping("/insert")
	public String insertDepartment(Department department) {
		if(departmentService.insertDepartment(department))
			return "education/findDepartment";
		else
		    return "education/index";
	    
	}
	
	@RequestMapping("/update")
	public String updateDepartment(Department department) {
		if(departmentService.updateDepartment(department))
			return "education/findDepartment";
		else
			return "education/index";
	}
	
	@RequestMapping("/delete")
	public String deleteDepartment(int dpid) {
		if( departmentService.deleteDepartment(dpid))
			return "education/findDepartment";
		else
			return "education/index";	
	}
	

}
