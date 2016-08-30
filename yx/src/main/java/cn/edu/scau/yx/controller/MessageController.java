package cn.edu.scau.yx.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Column;
import cn.edu.scau.yx.entity.Grade;
import cn.edu.scau.yx.entity.Message;
import cn.edu.scau.yx.service.interfaces.ColumnService;
import cn.edu.scau.yx.service.interfaces.MessageService;

@Controller
@RequestMapping("/noticePublish/message")
public class MessageController {

	@Autowired
	private MessageService messageService;
	@Autowired
	private ColumnService columnService;
	@RequestMapping("/addMessage")
	public String addDepartment(){
		return "noticePublish/addMessage";
	}
	@RequestMapping("/findMessage")
	public String findMessage(){
		return "noticePublish/findMessage";
	}
	@RequestMapping("/find")
	public @ResponseBody List<Message> findByName(String piTitle) {
		if(piTitle == null){
			piTitle = "";
		}
		List<Message> messages = messageService.findByMessageTitle(piTitle);
		return messages;
	}
	@RequestMapping("/insert")
	public String insertMessage(Message message) {
		if(messageService.insertMessage(message)!=0)
			return "noticePublish/findMessage";
		else
		    return "home/index";
	}
	@RequestMapping("/update")
	public String updateMessage(Message message) {
		if(messageService.updateMessage(message)!=0)
			return "noticePublish/findMessage";
		else
			return "home/index";
	}
	@RequestMapping("/delete")
	public String deleteMessage(int piId) {
		if( messageService.delMessageById(piId)!=0)
			return "noticePublish/findMessage";
		else
			return "home/index";	
	}
	@RequestMapping("/load")
	public @ResponseBody Message loadMajor(@PathVariable("piId")int piId) {
		Message message = messageService.findById(piId);
		return message;
	}
	@RequestMapping("/loadColumn")
	public @ResponseBody ArrayList<Column> loadAllColumn() {
		ArrayList<Column> columns = (ArrayList<Column>) columnService.findAll();
		return columns;
	}
}
