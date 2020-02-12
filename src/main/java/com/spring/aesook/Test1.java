package com.spring.aesook;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Test1 {
	
	@RequestMapping("/home.do")
	public String home() {
		return "/home";
	}
	
	@RequestMapping("/login.do")
	public String login() {
		return "/login";
	}
	
	@RequestMapping(value="/selectRegion.do",method = RequestMethod.GET)
	public String selectRegion() {
		return "/selectRegion";
	}
	@RequestMapping("/findId.do")
	public String findId() {
		return "/findId";
	}
	@RequestMapping("/findPassword.do")
	public String findPassword() {
		return "/findPassword";
	}
}
