package cn.edu.scau.yx.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.entity.StudentStatus;
import cn.edu.scau.yx.service.interfaces.ClassService;
import cn.edu.scau.yx.service.interfaces.DepartmentService;
import cn.edu.scau.yx.service.interfaces.MajorService;
import cn.edu.scau.yx.service.interfaces.PayTheFeesService;
import cn.edu.scau.yx.service.interfaces.StudentService;
import cn.edu.scau.yx.service.interfaces.StudentStatusService;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
	@Autowired
	private StudentService studentService;

	@Autowired
	private StudentStatusService studentStatusService;
	
	@Autowired
	private PayTheFeesService payTheFeesService;

	@Autowired
	private DepartmentService departmentService;
	
	@Autowired
	private MajorService majorService;
	
	@Autowired
	private ClassService classService;
	
	@RequestMapping("/checkIn")
	public String checkIn() {
		return "welcome/checkIn";
	}

	@RequestMapping("/militarySuppliesManagement")
	public String militarySuppliesManagement() {
		return "welcome/militarySuppliesManagement";
	}

	@RequestMapping("/studySuppliesManagement")
	public String studySuppliesManagement() {
		return "welcome/studySuppliesManagement";
	}

	@RequestMapping("/cardManagement")
	public String cardManagement() {
		return "welcome/cardManagement";
	}

	@RequestMapping("/medicareManagment")
	public String medicareManagment() {
		return "welcome/medicareManagment";
	}

	@RequestMapping("/registerAndReport")
	public String registerAndReport() {
		return "welcome/registerAndReport";
	}

	@RequestMapping("/fileSubmission")
	public String fileSubmission() {
		return "welcome/fileSubmission";
	}

	@RequestMapping("/sitePayment")
	public String sitePayment() {
		return "welcome/sitePayment";
	}

	@RequestMapping("/load1/{stuId}/{name}")
	public @ResponseBody Student load1(@PathVariable("stuId") String stuId, @PathVariable("name") String name) {

		Student student = new Student();
		student.setStuId(Integer.valueOf(stuId));
		student.setStudentName(name);
		Student result = studentService.findByStuIdAndName(student);

		return failDeal(result);

	}

	@RequestMapping("/load2/{id}")
	public @ResponseBody Student load1(@PathVariable("id") String id) {

		Student student = new Student();
		student.setId(id);
		Student result = studentService.findById(student);
		return failDeal(result);

	}

	@RequestMapping("/loadCard/{department}/{major}/{grade}/{class}")
	public @ResponseBody ArrayList<Student> loadCard(@PathVariable("department") String department,
			@PathVariable("major") String major, @PathVariable("grade") String grade,
			@PathVariable("class") String class1) {

		ArrayList<Student> result = studentService.findOneCardPassStatus(department, major, grade, class1);
		return result;

	}
	
	
	
	@RequestMapping("/loadMilitaryReceiveState/{department}/{major}/{grade}/{class}")
	public @ResponseBody ArrayList<Student> loadMilitaryReceiveState(@PathVariable("department") String department,
			@PathVariable("major") String major, @PathVariable("grade") String grade,
			@PathVariable("class") String class1) {

		ArrayList<Student> result = studentService.findMilitaryReceiveState(department, major, grade, class1);
		return result;

	}

	@RequestMapping("/loadFee1/{id}")
	public @ResponseBody Student loadFee1(@PathVariable("id") String id) {

		Student result = studentService.findFeeInfoById(id);
		return failDeal(result);

	}

	@RequestMapping("/loadFee2/{stuId}/{stuName}")
	public @ResponseBody Student loadFee2(@PathVariable("stuId") String stuId,
			@PathVariable("stuName") String stuName) {

		Student result = studentService.findFeeInfoStuIdAndName(stuId, stuName);
		return failDeal(result);

	}

	@RequestMapping("/loadFileSubmitStatusById/{id}")
	public @ResponseBody Student loadFileSubmitStatusById(@PathVariable("id") String id) {

		Student result = studentService.loadFileSubmitStatusById(id);
		return failDeal(result);

	}

	@RequestMapping("/loadFileSubmitStatusByStuIdAndName/{stuId}/{stuName}")
	public @ResponseBody Student loadFileSubmitStatusByStuIdAndName(@PathVariable("stuId") String stuId,
			@PathVariable("stuName") String stuName) {
		Student result = studentService.loadFileSubmitStatusByStuIdAndName(stuId, stuName);
		return failDeal(result);
	}

	@RequestMapping("/loadRegisterStateById/{id}")
	public @ResponseBody Student loadRegisterStateById(@PathVariable("id") String id) {

		Student result = studentService.loadRegisterStateById(id);
		return failDeal(result);

	}

	@RequestMapping("/loadRegisterStateByStuIdAndName/{stuId}/{stuName}")
	public @ResponseBody Student loadRegisterStateByStuIdAndName(@PathVariable("stuId") String stuId,
			@PathVariable("stuName") String stuName) {
		Student result = studentService.loadRegisterStateByStuIdAndName(stuId, stuName);
		return failDeal(result);
	}

	@RequestMapping("/updateCardStatusByStuId/{stuId}")
	public @ResponseBody String updateCardStatusByStuId(@PathVariable("stuId") Integer stuId) {

		StudentStatus studentStatus = new StudentStatus();
		studentStatus.setStudentId(stuId);
		studentStatus.setOneCard(1);
		;
		int i = studentStatusService.updateStudentStatusByStuId(studentStatus);

		return "success";
	}

	@RequestMapping("/updateRegisterStatusByStuId/{stuId}")
	public @ResponseBody String updateRegisterStatusByStuId(@PathVariable("stuId") Integer stuId) {
		StudentStatus studentStatus = new StudentStatus();
		studentStatus.setStudentId(stuId);
		studentStatus.setRegister(1);
		int i = studentStatusService.updateStudentStatusByStuId(studentStatus);

		return "success";
	}

	@RequestMapping("/updateFileSubmitStatusByStuId/{stuId}")
	public @ResponseBody String updateFileSubmitStatusByStuId(@PathVariable("stuId") Integer stuId) {
		StudentStatus studentStatus = new StudentStatus();
		studentStatus.setStudentId(stuId);
		studentStatus.setFileSubmit(1);
		int i = studentStatusService.updateStudentStatusByStuId(studentStatus);

		return "success";
	}
	
	
	
	
	@RequestMapping("/updatePaidFeeStatusByStuId/{stuId}")
	public @ResponseBody String updatePaidFeeStatusByStuId(@PathVariable("stuId") Integer stuId) {
		int i=payTheFeesService.updatePayTheFeesStatusByStuId(stuId);
		return "success";
	}
	
	
	
	@RequestMapping("/updateMiltaryReceiveStatusByStuId/{stuId}")
	public @ResponseBody String updateMiltaryReceiveStatusByStuId(@PathVariable("stuId") Integer stuId) {
		StudentStatus studentStatus = new StudentStatus();
		studentStatus.setStudentId(stuId);
		studentStatus.setMilitaryReceive(1);
		int i = studentStatusService.updateStudentStatusByStuId(studentStatus);

		return "success";
	}
	
	
	
	@RequestMapping("/updatePrintReportStatusByStuId/{stuId}")
	public @ResponseBody String updatePrintReportStatusByStuId(@PathVariable("stuId") Integer stuId) {
		StudentStatus studentStatus = new StudentStatus();
		studentStatus.setStudentId(stuId);
		studentStatus.setPrintReport(1);
		int i = studentStatusService.updateStudentStatusByStuId(studentStatus);

		return "success";
	}
	
	
	
	public Student failDeal(Student student) {
		if (student == null) {
			student = new Student();
			student.setResultMessage("fail");
		}
		return student;
	}
	
	
	@RequestMapping("/findAllDepartmentName")
	public @ResponseBody ArrayList<String> findAllDepartmentName() {
		
		return departmentService.findAllDepartmentName();
	}
	
	
	
	
	@RequestMapping("/findAllMajorNameByDeaprtmentName/{departmentName}")
	public @ResponseBody ArrayList<String> findAllMajorNameByDeaprtmentName(@PathVariable("departmentName") String departmentName) {
		
		return majorService.findAllMajorNameByDeaprtmentName(departmentName);
	}
	
	
	@RequestMapping("/findAllClassNameByMajorName/{majorName}")
	public @ResponseBody ArrayList<String> findAllClassNameByMajorName(@PathVariable("majorName") String majorName) {
		
		return classService.findAllClassNameByMajorName(majorName);
	}
	
	
	
}
