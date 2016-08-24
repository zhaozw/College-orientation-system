package cn.edu.scau.yx.controller;



import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Problems;
import cn.edu.scau.yx.entity.ProblemsTheme;
import cn.edu.scau.yx.entity.UserInfo;
import cn.edu.scau.yx.service.interfaces.ProblemsService;

@Controller
@RequestMapping("/advisory")
public class AdvisoryController {

	@Autowired
	private ProblemsService problemsService;
	
	//获取咨询列表
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model){
		//获取列表
		List<Problems> list=problemsService.getList();
		model.addAttribute("list",list);
		return "advisory/view_consult/list";
	}
	
	//搜索咨询列表
	@RequestMapping(value="/search",method=RequestMethod.GET)
	@ResponseBody
	public List<Problems> search(String audit,String authority,String keyWord,Model model){
		if(audit!=null||authority!=null||keyWord!=null){
			List<Problems> list=problemsService.getListByCondition(audit, authority, keyWord);
//			model.addAttribute("list", list);
			return list;
		}else{
			//获取列表
			List<Problems> list=problemsService.getList();
//			model.addAttribute("list",list);
			return list;
		}
	}
	
	//弹出详情页面
	@RequestMapping(value="/{problemsId}/detail",method=RequestMethod.GET)
	public String details(@PathVariable("problemsId") int problemsId,Model model){
	
		Problems detail = problemsService.getById(problemsId);
		if(detail == null){
			return "rediret:/advisory/list";
		}
		model.addAttribute("detail", detail);
		return null;
	}
	
	
	
	/**
	 * 
	 * @return url
	 */
//	@RequestMapping("/search")
//	public String search(){
//		return "advisory/view_consult/search_consult";
//	}
	
	
	
	@RequestMapping("/test")
	public String test(){
		return "dorm/test";
	}
	
	@RequestMapping("/searchKey")
	public @ResponseBody Problems searchKey(String key){
		Problems problems =new Problems();
		ProblemsTheme theme=new ProblemsTheme();
		UserInfo user=new UserInfo();
		problems.setProblemsId(100);
//		problems.setTheme("创业");
		problems.setContent("大众创业，万众创新");
//		problems.setUserName("黄某某");
		
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String time="2016-8-20 10:05:34";
		try {
			ts=Timestamp.valueOf(time);
		} catch (Exception e) {
			e.printStackTrace();
		}
		problems.setTime(ts);
		
		
		return problems;
	}
}
