package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import cn.edu.scau.yx.entity.NoticeComment;
import cn.edu.scau.yx.service.interfaces.NoticeCommentService;


@Controller
@RequestMapping("/noticePublish/comment")
public class NoticeCommentController {
	@Autowired
	private NoticeCommentService noticeCommentService;
	@RequestMapping("/findNoticeComment")
	public String findMessage(){
		return "noticePublish/showMessage";
	}
	@RequestMapping("/showMessage")
	public String showMessage(){
		return "noticePublish/showMessage";
	}
	@RequestMapping("/insert")
	public String insertComment(NoticeComment comment) {
		if(noticeCommentService.insertComment(comment)!=0)
			return "noticePublish/showMessage";
		else
		    return "home/index";
	}
	
	@RequestMapping("/findAll")
	public @ResponseBody List<NoticeComment> findAll() {
		
		List<NoticeComment> noticeComment = noticeCommentService.findAll();
		return noticeComment;
	}
	@RequestMapping("/findFromMessage")
	public @ResponseBody List<NoticeComment> findFromMessage(int piId) {
		
		List<NoticeComment> noticeComment = noticeCommentService.findFromMessage(piId);
		return noticeComment;
	}
}
