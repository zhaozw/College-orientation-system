package cn.edu.scau.yx.service.interfaces;

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
 *@description 宿舍模块的service接口设计
 *@date 2016年8月26日上午10:17:47
 *@version v1.0
 */
public interface DormService {

	/**
	 * 以下部分为宿舍区的增删查
	 */
	int addDormArea(DormArea dormArea);
	int delDormAreaById(int areaId);
	List<DormArea> getDormAreaList();
	
	/**
	 * 以下部分为楼栋的增删查
	 */
	int addBuilding(Building building);
	int delBuildingById(int buildingId);
	List<Building> getBuildingList();
	
	/**
	 * 以下部分为楼层的增删查
	 */
	int addFloor(Floor floor);
	int delFloorById(int floorId);
	List<Floor> getFloorList();
	
	/**
	 * 以下部分为宿舍基本信息的增删查
	 */
	int addDormitory(Dormitory dormitory);
	int delDormitoryById(int dormId);
	List<Dormitory> getDormitory();
	
	/**
	 * 以下部分为宿舍学生信息的增删查
	 */
	int addDormStudent(DormStudent dormStudent);
	int delDormStudentById(int dormStudentId);
	List<DormStudent> getDormStudentList();
	
	/**
	 * 以下部分为宿舍迎新物品的增删查改
	 */
	int addDormWelcome(DormWelcome dormWelcoem);
	int delDormWelcome(int dormWelcomeId);
	List<DormWelcome> getDormWelcome();
}
