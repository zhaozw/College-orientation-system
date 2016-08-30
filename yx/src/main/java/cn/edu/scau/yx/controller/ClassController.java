package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Class;
import cn.edu.scau.yx.entity.Grade;
import cn.edu.scau.yx.service.interfaces.ClassService;
import cn.edu.scau.yx.service.interfaces.GradeService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午10:17:07
 *@version v1.0
 */
@Controller
@RequestMapping("/education/class")
public class ClassController {
	@Autowired
	private ClassService classService;
	@Autowired
	private GradeService gradeService;

	@RequestMapping("/addClass")
	public String addClass(){
		return "education/addClass";
	}
	
	@RequestMapping("/findClass")
	public String findClass(){
		return "education/findClass";
	}
	
	@RequestMapping("/index")
	public String home(){
		return "education/index";
	}
	
	@RequestMapping("/find")
	public @ResponseBody ArrayList<Class> findByName(String clname) {
		if(clname == null){
			clname = "";
		}
		ArrayList<Class> classes = (ArrayList<Class>) classService.findByName(clname);
		return classes;
	}
	
	@RequestMapping("/insert")
	public String insertClass(Class clazz) {
		if(classService.insertClass(clazz))
			return "education/findClass";
		else
		    return "education/index";
	}
	
	@RequestMapping("/update")
	public String updateClass(Class clazz) {
		if(classService.updateClass(clazz))
			return "education/findClass";
		else
			return "education/index";
	}
	
	@RequestMapping("/delete")
	public String deleteClass(int clid) {
		if( classService.deleteClass(clid))
			return "education/findClass";
		else
			return "education/index";	
	}
	
	@RequestMapping("/loadGrade")
	public @ResponseBody ArrayList<Grade> loadAllGrade() {
		ArrayList<Grade> grades = gradeService.findAllGrade();
		return grades;
	}
	
	@RequestMapping("/loadClass/{majorId}/{gradeId}")
	public @ResponseBody ArrayList<Class> loadClass(@PathVariable("majorId")int majorId,@PathVariable("gradeId")int gradeId) {
		ArrayList<Class> classes = classService.findClass(majorId,gradeId);
		return classes;
	}

}
