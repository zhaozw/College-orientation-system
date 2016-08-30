package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import cn.edu.scau.yx.entity.Student;

@Component
public interface StudentService {
	Student findByStuIdAndName(Student student);
	
	Student findById(Student student);
	
	List<Student> findByClassId(int clid);
	
	Student findByStudentId(int stuid);
		
	Boolean deleteStudent(int stuid);
		
	Boolean insertStudent(Student student);
		
	Boolean updateStudent(Student student);
	
	ArrayList<Student> findOneCardPassStatus(@Param("department") String department,@Param("major") String major,@Param("grade") String grade ,@Param("Class") String class1);
	
	Student findFeeInfoById(@Param("id") String id);
	
	Student findFeeInfoStuIdAndName(@Param("stuId") String stuId,@Param("StuName") String stuName);
	
	Student loadFileSubmitStatusById(@Param("id") String id);
	
	Student loadFileSubmitStatusByStuIdAndName(@Param("stuId") String stuId,@Param("StuName") String stuName);
	
	Student loadRegisterStateById(@Param("id") String id);
	
	Student loadRegisterStateByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName);
	
	ArrayList<Student> findMilitaryReceiveState(String department, String major, String grade, String class1); 
}
