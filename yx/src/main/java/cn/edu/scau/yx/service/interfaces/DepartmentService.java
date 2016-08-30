package cn.edu.scau.yx.service.interfaces;

import java.util.ArrayList;
import java.util.List;

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
	public List<Department> findByName(String dpname);
	
	/**
	 * 根据输入的id查找学院
	 * @param dpid 要查找的学院id
	 * @return 学院实体
	 */
	public Department findById(int dpid);
	
	/**
	 * 根据输入的学院信息添加到数据库
	 * @param department
	 * @return int
	 */
	public Boolean insertDepartment(Department department);
	
	/**
	 * 根据提交的学院信息修改到数据库
	 * @param department
	 * @return
	 */
	public Boolean updateDepartment(Department department);
	
	/**
	 * 根据学院id删除学院信息
	 * @param dpid
	 * @return
	 */
	public Boolean deleteDepartment(int dpid);
	
	ArrayList<String> findAllDepartmentName();

	ArrayList<Department> findAllDepartment();
}
