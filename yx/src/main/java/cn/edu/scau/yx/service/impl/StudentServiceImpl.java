package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

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
	public List<Student> findByClassId(int clid) {
		if(clid == 0)
			throw new RuntimeException("error!");
		List<Student> students = studentMapper.findByClassId(clid);
		return students;
	}


	@Override
	public Boolean deleteStudent(int stuid) {
		int count = studentMapper.deleteStudent(stuid);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}


	@Override
	public Boolean insertStudent(Student student) {
		int count = studentMapper.insertStudent(student);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}


	@Override
	public Boolean updateStudent(Student student) {
		int count = studentMapper.updateStudent(student);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	};


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
	}


	@Override
	public ArrayList<Student> findMilitaryReceiveState(String department, String major, String grade, String class1) {
		
		ArrayList<Student> result=studentMapper.findMilitaryReceiveState(department, major, grade, class1);
	    return result;	
	}

	@Override
	public Student findByStudentId(int stuid) {
		if(stuid == 0)
			throw new RuntimeException("error!");
		Student student = studentMapper.findByStudentId(stuid);
		return student;
	}


	
}
