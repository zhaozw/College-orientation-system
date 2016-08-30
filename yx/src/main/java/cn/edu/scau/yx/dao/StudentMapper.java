package cn.edu.scau.yx.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.scau.yx.entity.Student;

/**
 * 
 *@author 杨俊泉 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月19日下午12:58:05
 *@version v1.0
 */

@Repository
public interface StudentMapper {
	
   Student findByStuIdAndName(Student student);
   
   Student findById(Student student);
   
   List<Student> findByName(@Param("stuname")String stuname);
   
   List<Student> findByClassId(@Param("clid")int clid);
   
   Student findByStudentId(@Param("stuid")int stuid);
	
   int deleteStudent(int stuid);
	
   int insertStudent(Student student);
	
   int updateStudent(Student student);
   
   ArrayList<Student> findOneCardPassStatus(@Param("department") String department,@Param("major") String major,@Param("grade") String grade ,@Param("Class") String Class);
   
   ArrayList<Student> findMilitaryReceiveState(@Param("department") String department,@Param("major") String major,@Param("grade") String grade ,@Param("Class") String Class);
   
   Student findFeeInfoById(@Param("id") String id);
   
   Student findFeeInfoStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName);
   
   Student loadFileSubmitStatusById(@Param("id") String id);
   
   Student loadFileSubmitStatusByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName);
   
   Student loadRegisterStateById(@Param("id") String id);
   
   Student loadRegisterStateByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName); 
}
