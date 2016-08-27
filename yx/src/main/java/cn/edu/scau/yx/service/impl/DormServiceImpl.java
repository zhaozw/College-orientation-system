package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.DormMapper;
import cn.edu.scau.yx.entity.Building;
import cn.edu.scau.yx.entity.DormArea;
import cn.edu.scau.yx.entity.DormStudent;
import cn.edu.scau.yx.entity.DormWelcome;
import cn.edu.scau.yx.entity.Dormitory;
import cn.edu.scau.yx.entity.Floor;
import cn.edu.scau.yx.service.interfaces.DormService;

@Service
public class DormServiceImpl implements DormService {

	@Autowired
	private DormMapper dormMapper;
	
	@Override
	public int addDormArea(DormArea dormArea) {
		int addCount=dormMapper.insertDormArea(dormArea);
		return addCount;
	}

	@Override
	public int delDormAreaById(int areaId) {
		int delCount=dormMapper.delDormAreaById(areaId);
		return delCount;
	}

	@Override
	public List<DormArea> getDormAreaList() {
		List<DormArea> dormArea = dormMapper.findDormArea();
		return dormArea;
	}

	@Override
	public int addBuilding(Building building) {
		int addCount =dormMapper.insertBuilding(building);
		return addCount;
	}

	@Override
	public int delBuildingById(int buildingId) {
		int delCount=dormMapper.delBuildingById(buildingId);
		return delCount;
	}

	@Override
	public List<Building> getBuildingList() {
		List<Building> building = dormMapper.findBuilding();
		return building;
	}

	@Override
	public int addFloor(Floor floor) {
		int addCount =dormMapper.insertFloor(floor);
		return addCount;
	}

	@Override
	public int delFloorById(int floorId) {
		int delCount=dormMapper.delFloorById(floorId);
		return delCount;
	}

	@Override
	public List<Floor> getFloorList() {
		List<Floor> floors=dormMapper.findFloor();
		return floors;
	}

	@Override
	public int addDormitory(Dormitory dormitory) {
		int addCount =dormMapper.insertDormitory(dormitory);
		return addCount;
	}

	@Override
	public int delDormitoryById(int dormId) {
		int delCount=dormMapper.delDormitoryById(dormId);
		return delCount;
	}

	@Override
	public List<Dormitory> getDormitory() {
		List<Dormitory> dormitory=dormMapper.findDormitory();
		return dormitory;
	}

	@Override
	public int addDormStudent(DormStudent dormStudent) {
		int addCount =dormMapper.insertDormStudent(dormStudent);
		return addCount;
	}

	@Override
	public int delDormStudentById(int dormStudentId) {
		int delCount=dormMapper.delDormStudentById(dormStudentId);
		return delCount;
	}

	@Override
	public List<DormStudent> getDormStudentList() {
		List<DormStudent> dormStudent=dormMapper.finDormStudent();
		return dormStudent;
	}

	@Override
	public int addDormWelcome(DormWelcome dormWelcome) {
		int addCount =dormMapper.insertDormWelcome(dormWelcome);
		return addCount;
	}

	@Override
	public int delDormWelcome(int dormResId) {
		int delCount=dormMapper.delDormWelcomeById(dormResId);
		return delCount;
	}

	@Override
	public List<DormWelcome> getDormWelcome() {
		List<DormWelcome> dormWelcome=dormMapper.findDormWelcome();
		return dormWelcome;
	}

	@Override
	public int updateDormWelcomeById(DormWelcome dormWelcome) {
		int updateCount = dormMapper.updateDormWelcomeById(dormWelcome);
		return updateCount;
	}
	
	

}
