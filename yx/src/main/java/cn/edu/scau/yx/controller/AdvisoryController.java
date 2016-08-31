package cn.edu.scau.yx.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Problems;
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
		try {
			//获取列表
			List<Problems> list=problemsService.getList();
			model.addAttribute("list",list);
			return "advisory/view_consult/list";
		} catch (Exception e) {
			model.addAttribute("errorMsg", "获取咨询信息失败");
			return null;
		}
		
	}
	
	
	//搜索咨询列表
	@RequestMapping(value="/search",method=RequestMethod.GET)
	@ResponseBody
	public List<Problems> search(String audit,String authority,String keyWord,Model model){
		try {
			if(audit!=null||authority!=null||keyWord!=null){
				List<Problems> list=problemsService.getListByCondition(audit, authority, keyWord);
				//model.addAttribute("list", list);
				return list;
			}else{
				//获取列表
				List<Problems> list=problemsService.getList();
//				model.addAttribute("list",list);
				return list;
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("errorMsg", "搜索咨询信息失败");
			return null;
		}
		
	}
	
	//弹出详情页面
	@RequestMapping(value="/{problemsId}/detail",method=RequestMethod.GET)
	public @ResponseBody Problems details(@PathVariable("problemsId") int problemsId){
	
		Problems detail = problemsService.getById(problemsId);
		return detail;
	}
	
	//删除单条数据
	@RequestMapping(value="/{problemsId}/del",method=RequestMethod.POST)
	@ResponseBody
	public int del(@PathVariable("problemsId") int problemsId,Model model){
		try {
			int delCount=problemsService.delById(problemsId);
			return delCount;
		} catch (Exception e) {
			model.addAttribute("errorMsg", "删除数据失败");
			return 0;
		}
		
	}
	
	//回复咨询
	@RequestMapping(value="/{replyId}/reply",method=RequestMethod.POST)
	public @ResponseBody int reply(@PathVariable("replyId") Integer replyId,String audit,String authority,String answer,String ansPersonId,Model model){
		
		Problems problems =new Problems();
		UserInfo user=new UserInfo();
		user.setUserId(Integer.parseInt(ansPersonId));
		problems.setAudit(audit);
		problems.setAuthority(authority);
		problems.setAnswer(answer);
		problems.setUserInfoAns(user);
		problems.setProblemsId(replyId);
		
		try {
			int updateCount = problemsService.replyById(Integer.valueOf(replyId),problems);
			return updateCount;
		} catch (Exception e) {
			model.addAttribute("errorMsg", "删除数据失败");
			return 0;
		}
	}
	
	@RequestMapping(value="/user/sendAdvisory")
	public String sendAdvisory(){
		return "usersAdvisory/add";
	}
	//添加用户咨询
	@RequestMapping(value="/user/add")
	public String addProblems(HttpSession session, Problems problems,Model model){
		UserInfo user =(UserInfo) session.getAttribute("user");
/*		int userId=1000;
		UserInfo user= new UserInfo();
		user.setUserId(userId);*/
		problems.setUserInfoAsk(user);
		//System.out.println(problems.getContent());
		try {
				problemsService.addProblems(problems);
				return "redirect:/advisory/user/list";
		} catch (Exception e) {
			model.addAttribute("errorMsg", "发布咨询信息失败");
			return "redirect:/advisory/user/sendAdvisory";
		}
		
		
	}
	
	//根据userId查询用户咨询列表
	@RequestMapping(value="/user/list")
	public String getuserProblemsList(HttpSession session,Model model){
		//获取列表
		/*int userId=1000;*/
		UserInfo user =(UserInfo) session.getAttribute("user");
		List<Problems> list=problemsService.getListByUserId(user.getUserId());
		model.addAttribute("list",list);
		return "usersAdvisory/list";
	}
	
	//根据userId和关键字搜索用户咨询列表
	@RequestMapping(value="/user/{userId}/search")
	@ResponseBody
	public List<Problems> getListByUserIdAndKey(@PathVariable("userId") Integer userId,String keyWord,Model model){
		//int userId=1000;
		
		if(userId!=0 && keyWord!=null){
			List<Problems> list=problemsService.getSearchByUserId(userId, keyWord);
			return list;
		}else{
			//获取列表
			List<Problems> list=problemsService.getList();
			return list;
		}
	}
}
