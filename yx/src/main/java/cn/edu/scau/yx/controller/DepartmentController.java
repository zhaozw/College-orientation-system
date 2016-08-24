/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.controller;

import java.util.List;

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
	public @ResponseBody List<Department> findByDepartmentName(@PathVariable("dpname")String dpname) {
		List<Department> departments = departmentService.findByDepartmentName(dpname);
		return departments;
	}
	
	@RequestMapping("/insert/{department}")
	public @ResponseBody Boolean insertDepartmentName(@PathVariable("department")Department department) {
		Boolean count = departmentService.insertDepartment(department);
		return count;
	}
	
	@RequestMapping("/update/{department}")
	public @ResponseBody Boolean updateDepartmentName(@PathVariable("department")Department department) {
		Boolean count = departmentService.updateDepartment(department);
		return count;
	}
	
	@RequestMapping("/find")
	public @ResponseBody Boolean deleteDepartmentName(@PathVariable("dpid")int dpid) {
		Boolean count = departmentService.deleteDepartment(dpid);
		return count;
	}
}
