package cn.edu.scau.yx.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.yx.entity.Column;

import cn.edu.scau.yx.service.interfaces.ColumnService;
@Controller
@RequestMapping("/noticePublish/column")
public class ColumnController {
	@Autowired
	private ColumnService columnService;
	@RequestMapping("/addColumn")
	public String addColumn(){
		return "noticePublish/addColumn";
	}
	@RequestMapping("/findColumn")
	public String findColumn(){
		return "noticePublish/findColumn";
	}
	@RequestMapping("/find")
	public @ResponseBody List<Column> findByKeyword(String ciKey) {
		if(ciKey == null){
			ciKey = "";
		}
		List<Column> column = columnService.findByColumnKey(ciKey);
		return column;
	}
	@RequestMapping("/insert")
	public String insertColumn(Column column) {
		if(columnService.insertColumn(column)!=0)
			return "noticePublish/findColumn";
		else
		    return "home/index";
	}
	@RequestMapping("/update")
	public String updateColumn(Column column) {
		if(columnService.updateColumn(column)!=0)
			return "noticePublish/findColumn";
		else
			return "home/index";
	}
	@RequestMapping("/delete")
	public String deleteColumn(int ciId) {
		if( columnService.delColumnById(ciId)!=0)
			return "noticePublish/findColumn";
		else
			return "home/index";	
	}
}
