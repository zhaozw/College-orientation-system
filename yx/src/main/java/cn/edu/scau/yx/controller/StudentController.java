/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.service.interfaces.ClassService;
import cn.edu.scau.yx.service.interfaces.GradeService;
import cn.edu.scau.yx.service.interfaces.StudentService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月28日下午3:26:25
 *@version v1.0
 */
@Controller
@RequestMapping("/studentInfo")
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private ClassService classService;
	@Autowired
	private GradeService gradeService;

	@RequestMapping("/addStudent")
	public String addStudent(){
		return "studentInfo/addStudent";
	}
	
	@RequestMapping("/findStudent")
	public String findStudent(){
		return "studentInfo/findStudent";
	}
	
	@RequestMapping("/viewInfoForStudent")
	public String viewInfoForStudent(){
		return "studentInfo/viewInfoForStudent";
	}
	
	@RequestMapping("/index")
	public String home(){
		return "studentInfo/index";
	}
	
	@RequestMapping("/find")
	public @ResponseBody ArrayList<Student> findByClassId(int clid) {
		ArrayList<Student> students = (ArrayList<Student>) studentService.findByClassId(clid);
		return students;
	}
	
	@RequestMapping("/insert")
	public String insertStudent(Student student) {
		if(studentService.insertStudent(student))
			return "studentInfo/findStudent";
		else
		    return "studentInfo/index";
	}
	
	@RequestMapping("/update")
	public String updateStudent(Student student) {
		if(studentService.updateStudent(student))
			return "studentInfo/findStudent";
		else
			return "studentInfo/index";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(int stuid) {
		if( studentService.deleteStudent(stuid))
			return "studentInfo/findStudent";
		else
			return "studentInfo/index";	
	}
	
	@RequestMapping("/viewForStudent/{stuid}")
	public @ResponseBody Student findByStudentId(@PathVariable("stuid")int stuid) {
		Student student =studentService.findByStudentId(stuid);
		return student;
	}
	
	@RequestMapping("/updateForStudent")
	public String updateForStudent(Student student) {
		if(studentService.updateStudent(student))
			return "studentInfo/viewInfoForStudent";
		else
			return "studentInfo/index";
	}
}
