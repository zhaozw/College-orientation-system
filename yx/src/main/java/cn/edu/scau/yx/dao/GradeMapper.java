package cn.edu.scau.yx.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.Grade;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月17日下午2:44:23
 *@version v1.0
 */
public interface GradeMapper {
	//int gradeCount();
	
	Integer stuCount(int gdid);
	
	List<Grade> findByName(@Param("gdname")String gdname);
	
	Grade findByNameSingle(String gdname);
	
	Grade findById(int gdid);
	
	int deleteGrade(int gdid);
	
	int insertGrade(Grade grade);
	
	int updateGrade(Grade grade);
	
	ArrayList<Grade> findAllGrade();
}
