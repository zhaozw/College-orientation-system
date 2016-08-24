package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.StudentMapper;
import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.service.interfaces.StudentService;


@Service
public class StudentServiceImpl implements StudentService{
	
    @Autowired
    private StudentMapper studentMapper;
    
    
	public Student findByStuIdAndName(Student student){
		Student result=studentMapper.findByStuIdAndName(student);
	    return result;	
		
	}


	@Override
	public Student findById(Student student) {
		Student result=studentMapper.findById(student);
	    return result;	
	}


	@Override
	public ArrayList<Student> findOneCardPassStatus(String department, String major, String grade, String Class) {
		ArrayList<Student> result=studentMapper.findOneCardPassStatus(department, major, grade, Class);
	    return result;	
	}


	@Override
	public Student findFeeInfoById(String id) {
		Student result=studentMapper.findFeeInfoById(id);
	    return result;	
	}


	@Override
	public Student findFeeInfoStuIdAndName(String stuId, String stuName) {
		Student result=studentMapper.findFeeInfoStuIdAndName(stuId, stuName);
	    return result;	
	}


	@Override
	public Student loadFileSubmitStatusById(String id) {
		Student result=studentMapper.loadFileSubmitStatusById(id);
	    return result;
	}


	@Override
	public Student loadFileSubmitStatusByStuIdAndName(String stuId, String stuName) {
		Student result=studentMapper.loadFileSubmitStatusByStuIdAndName(stuId, stuName);
	    return result;
	}


	@Override
	public Student loadRegisterStateById(String id) {
		Student result=studentMapper.loadRegisterStateById(id);
	    return result;
	}


	@Override
	public Student loadRegisterStateByStuIdAndName(String stuId, String stuName) {
		Student result=studentMapper.loadRegisterStateByStuIdAndName(stuId, stuName);
	    return result;
	};
	
}
