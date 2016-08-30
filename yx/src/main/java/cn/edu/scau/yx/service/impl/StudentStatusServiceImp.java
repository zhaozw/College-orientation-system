package cn.edu.scau.yx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.StudentStatusMapper;
import cn.edu.scau.yx.entity.StudentStatus;
import cn.edu.scau.yx.service.interfaces.StudentStatusService;

@Service
public class StudentStatusServiceImp implements StudentStatusService {
	@Autowired
	private StudentStatusMapper studentStatusMapper;

	@Override
	public int updateStudentStatusByStuId(StudentStatus studentStatus) {
		int i = studentStatusMapper.updateStudentStatusByStuId(studentStatus);
		return i;
	}

}
