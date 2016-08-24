package cn.edu.scau.yx.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.scau.yx.entity.Student;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月19日下午12:58:05
 *@version v1.0
 */

@Repository
public interface StudentMapper {
	
	
   Student findByStuIdAndName(Student student);
   Student findById(Student student);
   ArrayList<Student> findOneCardPassStatus(@Param("department") String department,@Param("major") String major,@Param("grade") String grade ,@Param("Class") String Class);
   Student findFeeInfoById(@Param("id") String id);
   Student findFeeInfoStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName);
   Student loadFileSubmitStatusById(@Param("id") String id);
   Student loadFileSubmitStatusByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName);
   Student loadRegisterStateById(@Param("id") String id);
   Student loadRegisterStateByStuIdAndName(@Param("stuId") String stuId,@Param("stuName") String stuName); 
}
