
package cn.edu.scau.yx.dao;

import cn.edu.scau.yx.entity.Department;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@decription TODO
 *@date 2016年8月17日下午2:44:23
 *@version v1.0
 */
public interface DepartmentMapper {
	
	int departmentCount();
	
	//List<Department> findByAid(@Param("aid") int aid,@Param("start") int start, @Param("size")int size);
	
	Department findByDepartmentName(String dpname);
	
	int deleteDepartment(int dpid);
	
	int insertDepartment(Department department);
	
	int updateDepartment(Department department);
}
