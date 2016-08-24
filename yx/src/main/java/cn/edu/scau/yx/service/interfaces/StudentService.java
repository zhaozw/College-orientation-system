package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.entity.Student;

@Component
public interface StudentService {
	Student findByStuIdAndName(Student student);
	Student findById(Student student);
	ArrayList<Student> findOneCardPassStatus(@Param("department") String department,@Param("major") String major,@Param("grade") String grade ,@Param("Class") String Class);
	Student findFeeInfoById(@Param("id") String id);
	Student findFeeInfoStuIdAndName(@Param("stuId") String stuId,@Param("StuName") String stuName);
	Student loadFileSubmitStatusById(@Param("id") String id);
	Student loadFileSubmitStatusByStuIdAndName(@Param("stuId") String stuId,@Param("StuName") String stuName);
	Student loadRegisterStateById(@Param("id") String id);
	Student loadRegisterStateByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName); 
}
