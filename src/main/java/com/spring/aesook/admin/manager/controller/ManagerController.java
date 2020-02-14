package com.spring.aesook.admin.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value = "/login.admin", method = RequestMethod.GET)
	public String moveLogin(ManagerVO vo) {
		return "/login";
	}
	
	@RequestMapping(value="/login.admin", method = RequestMethod.POST)
	public String checkLogin(ManagerVO vo, Model model) {
		ManagerVO user = managerLoginService.checkLogin(vo);
		
		
		System.out.println(user == null);
		if(user == null) {
			model.addAttribute("check", "noId");
			return "/login";
		} else {
			if (user.getAdminPass().equals(vo.getAdminPass())) {
				model.addAttribute("user",user);
			} else {
				model.addAttribute("check", "noPass");
				return "/login";
			}
		}
		
		return "/index";
	}
	
	
}

