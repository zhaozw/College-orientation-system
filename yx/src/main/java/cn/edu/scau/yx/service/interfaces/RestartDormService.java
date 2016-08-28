package cn.edu.scau.yx.service.interfaces;

import java.util.List;

import cn.edu.scau.yx.entity.D;
import cn.edu.scau.yx.entity.DS;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 重新构建：宿舍模块service接口
 *@date 2016年8月28日上午10:20:18
 *@version v1.0
 */
public interface RestartDormService {
	
	//增加宿舍信息
	int addDorm(D d);
	
	//根据id删除宿舍信息
	int delDorm(int areaId,int buildingId,int  floorId,int dormId);
	
	//查询所有宿舍信息
	List<D> getDormList();
	
	//增加宿舍学生信息
	int addDormStu(DS ds);
	
	//根据id删除宿舍学生信息
	int delDormStu(int sId);
	
	//查询所有宿舍学生信息
	List<DS> getDormStuList();
	
	//根据id查看单个宿舍学生信息
	DS getById(int sId);
	
	//根据id修改宿舍学生信息
	int updateById(int sId,DS ds);
}
