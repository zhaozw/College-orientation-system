package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.service.interfaces.StudentService;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
	@Autowired
	private StudentService studentService;
	
	
	@RequestMapping("/checkIn")
	public String checkIn(){
		return "welcome/checkIn";
	}
   
	@RequestMapping("/militarySuppliesManagement")
	public String militarySuppliesManagement(){
		return "welcome/militarySuppliesManagement";
	}
   
	@RequestMapping("/studySuppliesManagement")
	public String studySuppliesManagement(){
		return "welcome/studySuppliesManagement";
	}
   
	@RequestMapping("/cardManagement")
	public String cardManagement(){
		return "welcome/cardManagement";
	}
   
	@RequestMapping("/medicareManagment")
	public String medicareManagment(){
		return "welcome/medicareManagment";
	}
   
	@RequestMapping("/registerAndReport")
	public String registerAndReport(){
		return "welcome/registerAndReport";
	}
	
	@RequestMapping("/fileSubmission")
	public String fileSubmission(){
		return "welcome/fileSubmission";
	}
	
	@RequestMapping("/sitePayment")
	public String sitePayment(){
		return "welcome/sitePayment";
	}
	
	
	@RequestMapping("/load1/{stuId}/{name}")
	public @ResponseBody Student load1(@PathVariable("stuId") String stuId,@PathVariable("name")String name){
			
		Student student=new Student();
		student.setStuId(Integer.valueOf(stuId));
		student.setStudentName(name);		
		Student result=studentService.findByStuIdAndName(student);		
		return result;
		
	}
	
	
	@RequestMapping("/load2/{id}")
	public @ResponseBody Student load1(@PathVariable("id") String id){
			
		Student student=new Student();
		student.setId(id);
		Student result=studentService.findById(student);		
		return result;
		
	}
	
	@RequestMapping("/loadCard/{department}/{major}/{grade}/{class}")
	public @ResponseBody ArrayList<Student> loadCard(@PathVariable("department") String department,@PathVariable("major") String major,@PathVariable("grade") String grade,@PathVariable("class") String class1){
		
		ArrayList<Student> result =studentService.findOneCardPassStatus(department, major, grade, class1);
		System.out.println(result.get(2).toString());
		return result;
		
	}
	
	
	@RequestMapping("/loadFee1/{id}")
	public @ResponseBody Student loadFee1(@PathVariable("id") String id){
		
		Student result =studentService.findFeeInfoById(id);
		System.out.println(result.toString());
		return result;
		
	}
	
	
	@RequestMapping("/loadFee2/{stuId}/{stuName}")
	public @ResponseBody Student loadFee2(@PathVariable("stuId") String stuId,@PathVariable("stuName") String stuName){
		
		Student result =studentService.findFeeInfoStuIdAndName(stuId, stuName);
		System.out.println(result.toString());
		return result;
		
	}
	
	@RequestMapping("/loadFileSubmitStatusById/{id}")
	public @ResponseBody Student loadFileSubmitStatusById(@PathVariable("id") String id){
			
		Student result=studentService.loadFileSubmitStatusById(id);		
		return result;
		
	}
	@RequestMapping("/loadFileSubmitStatusByStuIdAndName/{stuId}/{stuName}")
	public @ResponseBody Student loadFileSubmitStatusByStuIdAndName(@PathVariable("stuId") String stuId,@PathVariable("stuName") String stuName){
		Student result =studentService.loadFileSubmitStatusByStuIdAndName(stuId, stuName);
		return result;
	}
	
	
	@RequestMapping("/loadRegisterStateById/{id}")
	public @ResponseBody Student loadRegisterStateById(@PathVariable("id") String id){
			
		Student result=studentService.loadRegisterStateById(id);		
		return result;
		
	}
	@RequestMapping("/loadRegisterStateByStuIdAndName/{stuId}/{stuName}")
	public @ResponseBody Student loadRegisterStateByStuIdAndName(@PathVariable("stuId") String stuId,@PathVariable("stuName") String stuName){
		Student result =studentService.loadRegisterStateByStuIdAndName(stuId, stuName);
		return result;
	}
	
	
	
}
