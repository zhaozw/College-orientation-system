package cn.edu.scau.yx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.yx.entity.MyCollection;
import cn.edu.scau.yx.entity.NoticeComment;
import cn.edu.scau.yx.service.interfaces.MyCollectionService;
import cn.edu.scau.yx.service.interfaces.NoticeCommentService;

@Controller
@RequestMapping("/noticePublish")
public class MyCollectionController {
	@Autowired
	private MyCollectionService mycollectionService;
	@RequestMapping("/insert")
	public String insertCollection(MyCollection mycollection) {
		if(mycollectionService.insertCollection(mycollection)!=0)
			return "noticePublish/showMessage";
		else
		    return "home/index";
	}
}
