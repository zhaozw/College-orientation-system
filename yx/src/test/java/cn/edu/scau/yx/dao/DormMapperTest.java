package cn.edu.scau.yx.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.Building;
import cn.edu.scau.yx.entity.DormArea;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-context.xml"})
public class DormMapperTest {

	@Autowired
	private DormMapper dormMapper;
	
	@Test
	public void insert(){
		int areaId =100;
		String areaName="黑山区";
		int buildingCount=15;
		DormArea dormArea = new DormArea();
		dormArea.setAreaId(areaId);
		dormArea.setAreaName(areaName);
		dormArea.setBuildingCount(buildingCount);
		int insertCount = dormMapper.insertDormArea(dormArea);
		System.out.println("插入的信息为="+dormArea);
		System.out.println("影响行数="+insertCount);
	}
	
	@Test
	public void del(){
		int areaId=100;
		int delCount = dormMapper.delDormAreaById(areaId);
		System.out.println("影响行数="+delCount);
	}
	
	@Test
	public void find(){
		List<Building> building= dormMapper.findBuilding();
		System.out.println("楼栋信息为="+building);
	}
}
