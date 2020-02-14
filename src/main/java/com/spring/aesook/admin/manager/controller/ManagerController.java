package com.spring.aesook.admin.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.manager.service.ManagerLoginService;
import com.spring.aesook.admin.manager.service.ManagerService;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	@Autowired
	private ManagerLoginService managerLoginService;

	
	//  --------------------------- 회원가입 ------------------------------------
	@RequestMapping(value = "/register.admin", method = RequestMethod.GET)
	public String moveRegister() {
		return "/register";
	}
	
	@RequestMapping(value = "/insertRegister.admin", method = RequestMethod.POST)
	public String insertRegister(ManagerVO vo) {
		managerService.insertManager(vo);
		return "/index";
	}
	
	//  --------------------------- 로그인 ------------------------------------
	@RequestMapping(value = "/login.admin", method = RequestMethod.GET)
	public String moveLogin(ManagerVO vo) {
		return "/login";
	}
	
	@RequestMapping(value="/login.admin", method = RequestMethod.POST)
	public String checkLogin(ManagerVO vo, Model model) {
		ManagerVO user = managerService.getManager(vo);
		
		
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
	
	
	//  --------------------------- 비밀번호 찾기 ------------------------------------
	@RequestMapping(value="/findPassword.admin", method=RequestMethod.GET)
	public String moveFindPassword(Model model) {
		model.addAttribute("findEmail", false);
		return "/findPassword";
	}
	
	@RequestMapping(value="/findPassword.admin",  method=RequestMethod.POST)
	public String findPassword(ManagerVO vo, Model model) {
		ManagerVO user = managerService.getManager(vo);
		if(user == null) {
			model.addAttribute("check", "noId");
			model.addAttribute("findEmail", false);
			return "/findPassword";
		}
		model.addAttribute("findEmail", true);
		model.addAttribute("user", user);
		return "/findPassword";
	}
	
	@RequestMapping(value="/sendEmail.admin" ,  method=RequestMethod.POST)
	public String sendEmail(@RequestParam("myEmail") String myEmail, ManagerVO vo, Model model) {
		if(vo.getAdminEmail().equals(myEmail)) {
			managerLoginService.sendEmailPass(vo);
			model.addAttribute("check", "sendEmail");
			return "/login";
		}
		model.addAttribute("check", "noEmail");
		model.addAttribute("findEmail", false);
		return "/findPassword";
	}
	

	
	
}

