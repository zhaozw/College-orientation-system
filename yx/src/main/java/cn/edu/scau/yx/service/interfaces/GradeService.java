package cn.edu.scau.yx.service.interfaces;

import java.util.List;

import cn.edu.scau.yx.entity.Grade;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日上午10:47:39
 *@version v1.0
 */
public interface GradeService {

	/**
	 * 根据输入的年级名查找学院
	 * @param gdname 要查找的年级名
	 * @return 年级实体
	 */
	List<Grade> findByGradeName(String gdname);
	
	/**
	 * 根据输入的年级信息添加到数据库
	 * @param grade
	 * @return int
	 */
	Boolean insertGrade(Grade grade);
	
	/**
	 * 根据提交的年级信息修改到数据库
	 * @param grade
	 * @return
	 */
	Boolean updateGrade(Grade grade);
	
	/**
	 * 根据年级id删除年级信息
	 * @param dpid
	 * @return
	 */
	Boolean deleteGrade(int gdid);
}
