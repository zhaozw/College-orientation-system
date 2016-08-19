/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
@RequestMapping("/education")
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
	
	@RequestMapping("/updateDepartment")
	public String updateDepartment(){
		return "education/updateDepartment";
	}
	
	@RequestMapping("/viewDepartment")
	public String viewDepartment(){
		return "education/viewDepartment";
	}
	
	@RequestMapping("/home")
	public String home(){
		return "home/index";
	}
	
	@RequestMapping("/find/{dpname}")
	public @ResponseBody Department findByDepartmentName(@PathVariable("dpname")String dpname) {
		Department department = departmentService.findByDepartmentName(dpname);
		return department;
	}
	
	@RequestMapping("/insert/{department}")
	public @ResponseBody int insertDepartmentName(@PathVariable("department")Department department) {
		int count = departmentService.insertDepartment(department);
		return count;
	}
	
	@RequestMapping("/update/{department}")
	public @ResponseBody int updateDepartmentName(@PathVariable("department")Department department) {
		int count = departmentService.updateDepartment(department);
		return count;
	}
	
	@RequestMapping("/find")
	public @ResponseBody int deleteDepartmentName(@PathVariable("dpid")int dpid) {
		int count = departmentService.deleteDepartment(dpid);
		return count;
	}
}
