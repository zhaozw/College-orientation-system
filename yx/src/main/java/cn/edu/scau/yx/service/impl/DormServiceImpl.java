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
		return 0;
	}

	@Override
	public int delDormAreaById(int areaId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<DormArea> getDormAreaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addBuilding(Building building) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delBuildingById(int buildingId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Building> getBuildingList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addFloor(Floor floor) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delFloorById(int floorId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Floor> getFloorList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addDormitory(Dormitory dormitory) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delDormitoryById(int dormId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Dormitory> getDormitory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addDormStudent(DormStudent dormStudent) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delDormStudentById(int dormStudentId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<DormStudent> getDormStudentList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addDormWelcome(DormWelcome dormWelcoem) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delDormWelcome(int dormWelcomeId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<DormWelcome> getDormWelcome() {
		// TODO Auto-generated method stub
		return null;
	}

}
