package cn.edu.scau.yx.service.interfaces;

import cn.edu.scau.yx.entity.Department;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月17日下午11:01:56
 *@version v1.0
 */
public interface DepartmentService {
	
	/**
	 * 根据输入的学院名查找学院
	 * @param dpname 要查找的学院名
	 * @return 学院实体
	 */
	Department findByDepartmentName(String dpname);
	
	/**
	 * 根据输入的学院信息添加到数据库
	 * @param department
	 * @return int
	 */
	int insertDepartment(Department department);
	
	/**
	 * 根据提交的学院信息修改到数据库
	 * @param department
	 * @return
	 */
	int updateDepartment(Department department);
	
	/**
	 * 根据学院id删除学院信息
	 * @param dpid
	 * @return
	 */
	int deleteDepartment(int dpid);
	
}
