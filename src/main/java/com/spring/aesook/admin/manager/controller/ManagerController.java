package com.spring.aesook.admin.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.admin.manager.service.ManagerLoginService;
import com.spring.aesook.admin.manager.service.ManagerService;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	@Autowired
	private ManagerLoginService managerLoginService;

	@RequestMapping(value = "/register.admin", method = RequestMethod.GET)
	public String moveRegister() {
		return "/register";
	}
	
	@RequestMapping(value = "/insertRegister.admin", method = RequestMethod.POST)
	public String insertRegister(ManagerVO vo) {
		managerService.insertManager(vo);
		return "/index";
	}
	
	@RequestMapping("/login.admin")
	public String moveLogin(ManagerVO vo) {
		return "/login";
	}
	
	
}

