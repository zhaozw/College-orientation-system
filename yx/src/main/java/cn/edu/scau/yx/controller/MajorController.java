package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Department;
import cn.edu.scau.yx.entity.Major;
import cn.edu.scau.yx.service.interfaces.DepartmentService;
import cn.edu.scau.yx.service.interfaces.MajorService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午9:45:26
 *@version v1.0
 */
@Controller
@RequestMapping("/education/major")
public class MajorController {
	@Autowired
	private MajorService majorService;
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping("/addMajor")
	public String addMajor(){
		return "education/addMajor";
	}
	
	@RequestMapping("/findMajor")
	public String findMajor(){
		return "education/findMajor";
	}
	
	@RequestMapping("/index")
	public String home(){
		return "education/index";
	}
	
	@RequestMapping("/find")
	public @ResponseBody ArrayList<Major> findByName(String mjname) {
		if(mjname == null){
			mjname = "";
		}
		ArrayList<Major> majors = (ArrayList<Major>) majorService.findByName(mjname);
		return majors;
	}
	
	@RequestMapping("/insert")
	public String insertMajor(Major major) {
		System.out.println(major.getName());
		System.out.println(major.getIntroduce());
		System.out.println(major.getDepartment().getId());
		if(majorService.insertMajor(major))
			return "education/findMajor";
		else
		    return "education/index";
	}
	
	@RequestMapping("/update")
	public String updateMajor(Major major) {
		if(majorService.updateMajor(major))
			return "education/findMajor";
		else
			return "education/index";
	}
	
	@RequestMapping("/delete")
	public String deleteMajor(int mjid) {
		if( majorService.deleteMajor(mjid))
			return "education/findMajor";
		else
			return "education/index";	
	}
	
	@RequestMapping("/loadDepartment")
	public @ResponseBody ArrayList<Department> loadAllDepartment() {
		ArrayList<Department> departments = departmentService.findAllDepartment();
		return departments;
	}
	
	@RequestMapping("/loadMajor/{departmentId}")
	public @ResponseBody ArrayList<Major> loadMajorsByDepartment(@PathVariable("departmentId")int departmentId) {
		ArrayList<Major> majors = majorService.findMajorsByDepartment(departmentId);
		return majors;
	}

}
