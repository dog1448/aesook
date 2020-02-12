package com.spring.aesook;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test1 {
		
	@RequestMapping("/index.admin")
	public String c() {
		return "/index";
	}

}
