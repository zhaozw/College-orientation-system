package cn.edu.scau.yx.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.scau.yx.dao.GradeMapper;
import cn.edu.scau.yx.entity.Grade;
import cn.edu.scau.yx.service.interfaces.GradeService;

/**
 *@author 赵文俊
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午8:03:49
 *@version v1.0
 */
@Service
public class GradeServiceImpl implements GradeService {

	@Autowired
    private GradeMapper gradeMapper;
	
	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#findByGradeName(java.lang.String)
	 */
	@Override
	public List<Grade> findByName(String gdname) {
		List<Grade> grades = gradeMapper.findByName(gdname);
		return grades;
	}

	@Override
	public Grade findById(int gdid) {
		if(gdid == 0)
			throw new RuntimeException("error!");
		Grade grade = gradeMapper.findById(gdid);
		return grade;
	}
	
	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#insertGrade(cn.edu.scau.yx.entity.Grade)
	 */
	@Transactional
	@Override
	public Boolean insertGrade(Grade grade) {
		int count = gradeMapper.insertGrade(grade);
		if(count != 1){
			throw new RuntimeException("error");
		}
		String gdname = grade.getName();
        Grade graded = gradeMapper.findByNameSingle(gdname);
		int stucount = gradeMapper.stuCount(graded.getId());
		grade.setStuNum(stucount);
		count = gradeMapper.updateGrade(grade);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#updateGrade(cn.edu.scau.yx.entity.Grade)
	 */
	@Transactional
	@Override
	public Boolean updateGrade(Grade grade) {
		int stucount = gradeMapper.stuCount(grade.getId());
		grade.setStuNum(stucount);
		int count = gradeMapper.updateGrade(grade);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#deleteGrade(int)
	 */
	@Override
	public Boolean deleteGrade(int gdid) {
		int count = gradeMapper.deleteGrade(gdid);
		if(count != 1){
			throw new RuntimeException("error");
		}
		return true;
	}

	@Override
	public ArrayList<Grade> findAllGrade() {
		ArrayList<Grade> gradeList=gradeMapper.findAllGrade();
		return gradeList;
	}



}
