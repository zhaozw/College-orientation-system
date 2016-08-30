package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.D;
import cn.edu.scau.yx.entity.DS;
import cn.edu.scau.yx.entity.Problems;
import cn.edu.scau.yx.entity.Student;
import cn.edu.scau.yx.service.interfaces.RestartDormService;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍模块的controller
 *@date 2016年8月28日上午10:38:08
 *@version v1.0
 */
@Controller
@RequestMapping("/dormModule")
public class RestartDormController {

	@Autowired
	private RestartDormService restartDormService;
	
	@RequestMapping(value="/dorm/list",method=RequestMethod.GET)
	public String getDormList(Model model){
		List<D> list = restartDormService.getDormList();
		model.addAttribute("list", list);
		return "restartDorm/dorm/list";
	}
	
	@RequestMapping(value="/dorm/addDorm")
	public String addDorm(){
		return "restartDorm/dorm/add";
	}
	
	@RequestMapping(value="/add1",method=RequestMethod.POST)
	public String add1(String areaId,String areaName,String buildingId, String floorId,String dormId){
		D d=new D();
		d.setAreaId(Integer.parseInt(areaId));
		d.setAreaName(areaName);
		d.setBuildingId(Integer.parseInt(buildingId));
		d.setFloorId(Integer.parseInt(floorId));
		d.setDormId(Integer.parseInt(dormId));
		int addCount = restartDormService.addDorm(d);
		if(addCount!=0){
			return "redirect:/dormModule/dorm/list";
		}else{
			return "forward:/dormModule/dorm/list";//异常处理
		}
	}
	
	@RequestMapping(value="/dorm/{areaId}/{buildingId}/{floorId}/{dormId}/del",method=RequestMethod.POST)
	public String delDormById(@PathVariable("areaId") int areaId,@PathVariable("buildingId") int buildingId,@PathVariable("floorId") int floorId,@PathVariable("dormId") int dormId){
		int delCount = restartDormService.delDorm(areaId, buildingId, floorId, dormId);
		if(delCount!=0){
			return "restartDorm/dorm/list";
		}else{
			return null;//异常处理
		}
	}
	
	@RequestMapping(value="/dormStu/list",method=RequestMethod.GET)
	public String getDormStuList(Model model){
		List<DS> list  = restartDormService.getDormStuList();
		model.addAttribute("list", list);
		System.out.println(list);
		return "restartDorm/dormStu/list";
	}
	
	@RequestMapping(value="/dormStu/addDormStu")
	public String addDormStu(){
		return "restartDorm/dormStu/add";
	}
	@RequestMapping(value="/add2")
	public String add2(String stuName,String stuId,String areaId,String areaName,String buildingId, String floorId,String dormId){
		
		DS ds=new DS();
		Student stu= new Student();
		D d=new D();
		stu.setStuId(Integer.parseInt(stuId));
		stu.setStudentName(stuName);
		d.setAreaId(Integer.parseInt(areaId));
		d.setAreaName(areaName);
		d.setBuildingId(Integer.parseInt(buildingId));
		d.setFloorId(Integer.parseInt(floorId));
		d.setDormId(Integer.parseInt(dormId));
		
		ds.setD(d);
		ds.setStudent(stu);
		
		int addCount = restartDormService.addDormStu(ds);
		if(addCount!=0){
			return "redirect:/dormModule/dormStu/list";
		}else{
			return null;//异常处理
		}
	}
	
	@RequestMapping(value="/dormStu/{sId}/del",method=RequestMethod.POST)
	public String delDormStuById(@PathVariable("sId") int sId){
		int delCount = restartDormService.delDormStu(sId);
		if(delCount!=0){
			return "restartDorm/dormStu/list";
		}else{
			return null;
		}
	}
	
	@RequestMapping(value="/dormStu/{sId}/detail",method=RequestMethod.GET)
	public String getById(@PathVariable("sId") int sId,Model model){
		DS detail = restartDormService.getById(sId);
		model.addAttribute("detail", detail);
		//return detail;
		return "restartDorm/dormStu/update";
	}
	@RequestMapping(value="/dormStu/update/{sId}")
	public String updateById(@PathVariable("sId") int sId,String stuName,String stuId,String areaId,String areaName,String buildingId, String floorId,String dormId){
		
		DS ds=new DS();
		Student stu= new Student();
		D d=new D();
		stu.setStuId(Integer.parseInt(stuId));
		stu.setStudentName(stuName);
		d.setAreaId(Integer.parseInt(areaId));
		d.setAreaName(areaName);
		d.setBuildingId(Integer.parseInt(buildingId));
		d.setFloorId(Integer.parseInt(floorId));
		d.setDormId(Integer.parseInt(dormId));
		
		ds.setD(d);
		ds.setStudent(stu);
		
		int updateCount = restartDormService.updateById(sId, ds);
		if(updateCount!=0){
			return "redirect:/dormModule/dormStu/list";
		}else{
			return "redirect:/dormModule/dormStu/list";
		}
	}
	
	//根据条件查询宿舍学生信息。
	@RequestMapping(value="/dormStu/search",method=RequestMethod.GET)
	@ResponseBody
	public List<DS> search(String areaName,String keyWord,Model model){
		if(areaName!=null||keyWord!=null){
			List<DS> list=restartDormService.getListByCondition(areaName, keyWord);
			return list;
		}else{
			//获取列表
			List<DS> list=restartDormService.getDormStuList();
			return list;
		}
	}
}
