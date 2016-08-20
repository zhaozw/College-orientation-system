package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.yx.entity.ProblemsTheme;

@Controller
@RequestMapping("/advisory")
public class AdvisoryController {

	@RequestMapping("/search")
	public String search(){
		return "dormAndAsk/view_consult/search_consult";
		
	}
	//name=list[0].name
	//name=list[0].id
	public String add(List<ProblemsTheme> list){
		
		
		return null;
	}
}
