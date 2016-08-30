package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;
import java.util.List;

import cn.edu.scau.yx.entity.Class;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午3:50:31
 *@version v1.0
 */
public interface ClassService {
	
	/**
	 * 根据输入的班级名查找班级
	 * @param clname 要查找的班级名
	 * @return 班级实体
	 */
	public List<Class> findByName(String clname);
	
	/**
	 * 根据输入的id查找班级
	 * @param clid 要查找的班级id
	 * @return 班级实体
	 */
	public Class findById(int clid);
	
	/**
	 * 根据输入的班级信息添加到数据库
	 * @param clazz
	 * @return Boolean
	 */
	public Boolean insertClass(Class clazz);
	/**
	 * 根据提交的班级信息修改到数据库
	 * @param clazz
	 * @return Boolean
	 */
	public Boolean updateClass(Class clazz);
	
	/**
	 * 根据班级id删除班级信息
	 * @param clid
	 * @return Boolean
	 */
	public Boolean deleteClass(int clid);
	
	ArrayList<String> findAllClassNameByMajorName(String majorName);

	public ArrayList<Class> findClass(int majorId, int gradeId);

}
