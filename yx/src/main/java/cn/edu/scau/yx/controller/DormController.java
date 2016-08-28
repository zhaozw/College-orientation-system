package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.scau.yx.entity.*;
import cn.edu.scau.yx.service.interfaces.DormService;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍管理模块的Controller
 *@date 2016年8月26日下午1:12:00
 *@version v1.0
 */
@Controller
@RequestMapping("/dorm")
public class DormController {

	@Autowired
	private DormService dormService;
	
	/**
	 * 以下为宿舍区增删查的controllers
	 */
	@RequestMapping(value="/dormArea/list" )
	public String getDormAreaList(Model model){
		List<DormArea> list = dormService.getDormAreaList();
		model.addAttribute("list", list);
		return "dorm/views1/list";
	}
	
	@RequestMapping("/dormArea/addDormArea")
	public String addDormArea(){
		return "dorm/views1/add";
	}
	@RequestMapping(value="/add1",method=RequestMethod.POST)
	public String add1(DormArea dormArea,Building building){
			int addCount=dormService.addDormArea(dormArea);
			if(addCount>0){
				return "redirect:/dorm/dormArea/list";
			}else{
				return null;
			}
	}
	
	@RequestMapping("/dormArea/{areaId}/del")
	public String delDormAreaById(@PathVariable("areaId") int areaId){
		int delCount = dormService.delDormAreaById(areaId);
		if(delCount>0){
			return "dorm/views1/list";
		}else{
			return null;
		}
	}
	
	/**
	 * 以下为楼栋增删查的controllers
	 */
	@RequestMapping("/building/list")
	public String getBuildingList(Model model){
		List<Building> list = dormService.getBuildingList();
		model.addAttribute("list", list);
		return "dorm/views2/list";
	}
	
	@RequestMapping("/building/addBuilding")
	public String addBuilding(){
		return "dorm/views2/add";
	}
	@RequestMapping(value="/add2")
	public String add2(Building building){
		int addCount=dormService.addBuilding(building);
		if(addCount>0){
			return "redirect:/dorm/building/list";
		}else{
			return null;
		}
	}
	
	@RequestMapping("/building/{buildingId}/del")
	public String delBuildingById(@PathVariable("buildingId") int buildingId){
		int delCount = dormService.delBuildingById(buildingId);
		if(delCount>0){
			return "dorm/views2/list";
		}else{
			return null;
		}
	}
	
	/**
	 * 以下为楼层增删查的controllers
	 */
	@RequestMapping("/floor/list")
	public String getFloorList(Model model){
		List<Floor> floor = dormService.getFloorList();
		//model.addAttribute("list", list);
		return "dorm/views6/list";
	}
	
	@RequestMapping("/floor/addFloor")
	public String addFloor(){
		return "dorm/views6/add";
	}
	@RequestMapping(value="/add3")
	public String add3(Floor floor){
		int addCount=dormService.addFloor(floor);
		if(addCount>0){
			return "redirect:/dorm/floor/list";
		}else{
			return null;
		}
	}
	
	@RequestMapping("/floor/{floorId}/del")
	public String delFloorById(@PathVariable("floorId") int floorId){
		int delCount = dormService.delFloorById(floorId);
		if(delCount>0){
			return "dorm/views6/list";
		}else{
			return null;
		}
	}
	
	
	/**
	 * 以下为宿舍基本信息增删查的controllers
	 */
	@RequestMapping("/dormitory/list")
	public String getDormitoryList(Model model){
		List<Dormitory> list = dormService.getDormitory();
		model.addAttribute("list", list);
		return "dorm/views3/list";
	}
	
	@RequestMapping("/dormitory/addDormitory")
	public String adddormitory(){
		return "dorm/views3/add";
	}
	@RequestMapping(value="/add4")
	public String add4(Dormitory dormitory){
		int addCount=dormService.addDormitory(dormitory);
		if(addCount>0){
			return "redirect:/dorm/dormitory/list";
		}else{
			return null;
		}
	}
	
	@RequestMapping("/dormitory/{dormId}/del")
	public String delDormById(@PathVariable("dormId") int dormId){
		int delCount = dormService.delDormitoryById(dormId);
		if(delCount>0){
			return "dorm/views3/list";
		}else{
			return null;
		}
	}
	
	/**
	 * 以下为宿舍学生信息增删查的controllers
	 */
	@RequestMapping("/dormStu/list")
	public String getDormStudentList(Model model){
		List<DormStudent> list = dormService.getDormStudentList();
		model.addAttribute("list", list);
		return "dorm/views4/list";
	}
	
	@RequestMapping("/dormStu/addDormStu")
	public String addDormStu(){
		return "dorm/views4/add";
	}
	@RequestMapping(value="/add5")
	public String add5(DormStudent dormStudent){
		int addCount=dormService.addDormStudent(dormStudent);
		if(addCount>0){
			return "redirect:/dorm/dormStu/list";
		}else{
			return null;
		}
	}
	
	@RequestMapping("/dormStu/{dormStudentId}/del")
	public String delDormStuById(@PathVariable("dormStudentId") int dormStudentId){
		int delCount = dormService.delDormStudentById(dormStudentId);
		if(delCount>0){
			return "dorm/views4/list";
		}else{
			return null;
		}
	}
	
}
