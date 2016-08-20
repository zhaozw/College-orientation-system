package cn.edu.scau.yx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
	
	@RequestMapping("/checkIn")
	public String checkIn(){
		return "welcome/checkIn";
	}
    
}
