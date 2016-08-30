package cn.edu.scau.yx.controller;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Grade;
import cn.edu.scau.yx.service.interfaces.GradeService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午8:03:49
 *@version v1.0
 */
@Controller
@RequestMapping("/education/grade")
public class GradeController {
	@Autowired
	private GradeService gradeService;

	@RequestMapping("/addGrade")
	public String addGrade(){
		return "education/addGrade";
	}
	
	@RequestMapping("/findGrade")
	public String findGrade(){
		return "education/findGrade";
	}
		
	@RequestMapping("/index")
	public String home(){
		return "education/index";
	}
	
	@RequestMapping("/find")
	public @ResponseBody ArrayList<Grade> findByName(String gdname) {
		if(gdname == null){
			gdname = "";
		}
		ArrayList<Grade> grades = (ArrayList<Grade>) gradeService.findByName(gdname);
		return grades;
	}
	
	@RequestMapping("/insert")
	public String insertGrade(Grade grade) {
		if(gradeService.insertGrade(grade))
			return "education/findGrade";
		else
		    return "education/index";
	}
	
	@RequestMapping("/update")
	public String updateGrade(Grade grade) {
		if(gradeService.updateGrade(grade))
			return "education/findGrade";
		else
			return "education/index";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(int gdid) {
		if( gradeService.deleteGrade(gdid))
			return "education/findGrade";
		else
			return "education/index";	
	}
	
}
