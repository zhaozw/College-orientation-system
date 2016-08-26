package cn.edu.scau.yx.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.Building;
import cn.edu.scau.yx.entity.DormArea;
import cn.edu.scau.yx.entity.DormWelcome;
import cn.edu.scau.yx.entity.Dormitory;

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
	
	@Test
	public void update(){
		int dormResId=777;
		DormWelcome data = dormMapper.findDormWelcomeById(dormResId);
		System.out.println("修改前的数据为="+data);
		data.setResName("华农奶牛");
		data.setResNumber(5);
		data.setDormId(666);
		data.setFloorId(6);
		data.setBuildingId(9);
		data.setAreaId(100);
		int updateCount = dormMapper.updateDormWelcomeById(data);
		System.out.println("影响行数="+updateCount);
		System.out.println("修改的后的数据为="+data);
	}
}
