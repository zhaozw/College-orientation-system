/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.Class;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月22日下午3:06:23
 *@version v1.0
 */
public interface ClassMapper {

	//int stuCount(int clid);
	
	List<Class> findByName(@Param("clname")String clname);
	
	Class findById(int clid);
	
	int deleteClass(int clid);
	
	int insertClass(Class classes);
	
	int updateClass(Class classes);

	ArrayList<String> findAllClassNameByMajorName(String majorName);
	
	ArrayList<Class> findClass(@Param("majorId")int majorId,@Param("gradeId") int gradeId);
}
