package cn.edu.scau.yx.dao;

import java.util.List;

import cn.edu.scau.yx.entity.Building;
import cn.edu.scau.yx.entity.DormArea;
import cn.edu.scau.yx.entity.DormStudent;
import cn.edu.scau.yx.entity.DormWelcome;
import cn.edu.scau.yx.entity.Dormitory;
import cn.edu.scau.yx.entity.Floor;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 与宿舍管理模块相关的Dao接口
 *@date 2016年8月25日下午2:21:05
 *@version v1.0
 */
public interface DormMapper {

	/**
	 * 以下部分为宿舍区的增删查改
	 */
	int insertDormArea(DormArea dormArea);
	int delDormAreaById(int areaId);
	List<DormArea> findDormArea();//查询宿舍区信息列表
	int updateDormAreaById(int areaId);
	
	/**
	 * 以下部分为楼栋的增删查改
	 */
	int insertBuilding(Building building);
	int delBuildingById(int buildingId);
	List<Building> findBuilding();
	int updateBuildingById(int buildingId);
	
	/**
	 * 以下部分为楼层的增删查改
	 */
	int insertFloor(Floor floor);
	int delFloorById(int floorId);
	List<Floor> findFloor();
	int updateFloorById(int floorId);
	
	/**
	 * 以下部分为宿舍基本信息的增删查改
	 */
	int insertDormitory(Dormitory dormitory);
	int delDormitoryById(int dormId);
	List<Dormitory> findDormitory();
	int updateDormitoryById(int dormId);
	
	
	/**
	 * 以下部分为宿舍学生信息的增删查改
	 */
	int insertDormStudent(DormStudent dormStudent);
	int delDormStudentById(int dormStudentId);
	List<DormStudent> finDormStudent();
	int updateDormStudentById(int dormStudentId);
	
	/**
	 * 以下部分为宿舍迎新物品的增删查改
	 */
	int insertDormWelcome(DormWelcome dormWelcome);
	int delDormWelcomeById(int dormResId);
	List<DormWelcome> findDormWelcome();
	int updateDormWelcomeById(int dormResId);
	
}
