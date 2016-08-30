package cn.edu.scau.yx.dao;

import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.entity.StudentStatus;

public interface StudentStatusMapper {
	int updateStudentStatusByStuId(StudentStatus studentStatus);
}
