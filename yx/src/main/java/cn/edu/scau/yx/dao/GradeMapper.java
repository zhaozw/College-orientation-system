package cn.edu.scau.yx.dao;

import java.util.List;

import cn.edu.scau.yx.entity.Grade;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月18日下午8:44:10
 *@version v1.0
 */
public interface GradeMapper {
	//int gradeCount();
	
	int stuCount(int gdid);
	
	List<Grade> findByGradeName(String gdname);
	
	//Grade findByGradeName(String gdname);
	
	int deleteGrade(int gdid);
	
	int insertGrade(Grade grade);
	
	int updateGrade(Grade grade);
}
