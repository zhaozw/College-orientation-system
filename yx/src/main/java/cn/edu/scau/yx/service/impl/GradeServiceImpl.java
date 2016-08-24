package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.scau.yx.dao.GradeMapper;
import cn.edu.scau.yx.entity.Grade;
import cn.edu.scau.yx.service.interfaces.GradeService;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日上午11:10:56
 *@version v1.0
 */
public class GradeServiceImpl implements GradeService {

	@Autowired
    private GradeMapper gradeMapper;
	
	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#findByGradeName(java.lang.String)
	 */
	@Override
	public List<Grade> findByGradeName(String gdname) {
		List<Grade> grades = gradeMapper.findByGradeName(gdname);
		return grades;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#insertGrade(cn.edu.scau.yx.entity.Grade)
	 */
	@Override
	public Boolean insertGrade(Grade grade) {
		int stucount = gradeMapper.stuCount(grade.getId());
		grade.setStuNum(stucount);
		int count = gradeMapper.insertGrade(grade);
		if(count != 1){
			throw new RuntimeException("error");
		}
		// TODO Auto-generated method stub
		return true;
	}

	/* (non-Javadoc)
	 * @see cn.edu.scau.yx.service.interfaces.GradeService#updateGrade(cn.edu.scau.yx.entity.Grade)
	 */
	@Override
	public Boolean updateGrade(Grade grade) {
		int stucount = gradeMapper.stuCount(grade.getId());
		grade.setStuNum(stucount);
		int count = gradeMapper.insertGrade(grade);
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

}
