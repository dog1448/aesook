package com.spring.aesook;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Jaehoon {
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String controller() {
		return "/home";
	}
	
	@RequestMapping(value = "/selectRegion.do", method = RequestMethod.GET)
	public String controller2() {
		return "/selectRegion";
	}
}
