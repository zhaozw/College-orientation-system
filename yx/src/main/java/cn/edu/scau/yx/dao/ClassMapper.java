/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.dao;

import java.util.List;
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
	
	List<Class> findByClassName(String clname);
	
	//Class findByClassName(String clname);
	
	int deleteClass(int clid);
	
	int insertClass(Class classes);
	
	int updateClass(Class classes);
}
