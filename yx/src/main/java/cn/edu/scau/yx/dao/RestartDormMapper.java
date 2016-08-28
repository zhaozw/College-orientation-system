package cn.edu.scau.yx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.D;
import cn.edu.scau.yx.entity.DS;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍管理模块的相关dao接口
 *@date 2016年8月27日下午7:28:17
 *@version v1.0
 */
public interface RestartDormMapper {

	
	//增加宿舍信息
	int insertD(D d);
	
	//根据id删除宿舍信息
	int delDById(@Param("areaId") int areaId,@Param("buildingId") int buildingId,@Param("floorId") int floorId,@Param("dormId") int dormId);
	
	//查询所有宿舍信息
	List<D> findAllD();
	
	//增加宿舍学生信息
	int insertDS(DS ds);
	
	//根据id删除宿舍学生信息
	int delDsById(int sId);
	
	//查询所有学生信息
	List<DS> findAllDs();
	
	//根据id查看单个宿舍学生信息
	DS findDsById(int sId);
	
	//根据id修改宿舍学生信息
	int updateDsById(@Param("sId") int sId,@Param("ds") DS ds);
	
	
	
	
	/*
	//插入宿舍信息:分别执行四个部分的sql插入
	int insertDormitory(Dormitory dormitory);
	int insertFloor(Floor floor);
	int insertBuilding(Building building);
	int insertDormArea(DormArea dormArea);
	
	//插入宿舍学生信息:包括学生、新生物品
	int insertDormStudent(DormStudent dormStudent);
	
	//插入迎新物品
	int insertDormWelcome(DormWelcome dormWelcome);
	
	//删除宿舍学生信息
	int delDormStudentById(int dormStudentId);
	
	//删除迎新物品信息
	int delDormWelcomeById(int dormResId);
	
	//查询所有宿舍信息（）
	List<DormArea> findAllDorm();
	
	//查询所有宿舍学生信息
	List<DormArea> findAllDormStu();
	
	//查询所有迎新物品信息
	List<DormWelcome> findAllDormWel();
	
	//根据条件查询宿舍学生信息
	List<DormArea> findWithCondition(@Param("areaName") String areaName,@Param("buildingId") int buildingId, @Param("floorId") int floorId);
	
	//根据id查看宿舍学生详细信息
	DormArea findById(int areaId);
	
	//根据id修改宿舍学生信息
	int updateById(int areaId);
	*/
}
