/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.scau.yx.entity.OneCardPass;
import cn.edu.scau.yx.service.interfaces.OneCardPassService;

/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016骞�8鏈�1鏃� 涓嬪崍2:40:58
 * @version v1.0
 */
@Controller
@RequestMapping("/OneCardPass")
public class OneCardPassController {
	@Autowired
	private OneCardPassService oneCardPassService;

	/*
	 * @RequestMapping("/{aid}/home") public String home(){ return "home/index";
	 * }
	 */


	
	

	@RequestMapping("/view")
	public String checkIn(){
		return "/finance/UpdateOneCardPass";
	}
	
	@RequestMapping("/ViewCard")
	public List<OneCardPass> ViewCard() {

		List<OneCardPass> result = oneCardPassService.OneCardPassList();

		return result;
	}

	@RequestMapping("/FindCard/{studentId}")
	public OneCardPass FindCard(@PathVariable("studentId") int studentId) {

		OneCardPass result = oneCardPassService.findOneCardPassBySid(studentId);

		return result;
	}


	@RequestMapping("/UpdateCard")
	public Boolean UpdateCard(OneCardPass oneCardPass) {
		return oneCardPassService.updateOneCardPass(oneCardPass);
	}

	@RequestMapping("/AddCard")
	public Boolean AddCard(OneCardPass oneCardPass) {
		return oneCardPassService.addOneCardPass(oneCardPass);
	}

}
