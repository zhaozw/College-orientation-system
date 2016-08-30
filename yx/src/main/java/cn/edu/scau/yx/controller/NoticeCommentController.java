package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Message;
import cn.edu.scau.yx.entity.NoticeComment;
import cn.edu.scau.yx.service.interfaces.NoticeCommentService;


@Controller
@RequestMapping("/noticePublish/noticeComment")
public class NoticeCommentController {
	@Autowired
	private NoticeCommentService noticeCommentService;
	@RequestMapping("/findNoticeComment")
	public String findMessage(){
		return "noticePublish/findNoticeComment";
	}
	@RequestMapping("/find")
	public @ResponseBody List<NoticeComment> findAll() {
		
		List<NoticeComment> noticeComment = noticeCommentService.findAll();
		return noticeComment;
	}
}
