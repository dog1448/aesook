package com.spring.aesook.admin.manager.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.admin.manager.service.ManagerLoginService;
import com.spring.aesook.admin.manager.service.ManagerRegisterService;
import com.spring.aesook.admin.manager.service.ManagerService;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	@Autowired
	private ManagerLoginService managerLoginService;
	@Autowired
	private ManagerRegisterService managerRegisterService;

	
	//  --------------------------- 회원가입 ------------------------------------
	@RequestMapping(value = "/register.admin", method = RequestMethod.GET)
	public String moveRegister() {
		return "/register";
	}
	
	@RequestMapping(value = "/register.admin", method = RequestMethod.POST)
	public String insertRegister(ManagerVO vo, Model model) {
		int result = managerRegisterService.idCheck(vo);
		try {
			if(result==1) {
				return "/register";
			}else if(result==0) {
				managerService.insertManager(vo);
			}
		}catch(Exception e) {
			throw new RuntimeException();
		}
		return "/index";
	}

	@ResponseBody
	@RequestMapping(value = "/idCheck.admin", method = RequestMethod.POST)
	public int idCheck(ManagerVO vo) {
		int result = managerRegisterService.idCheck(vo);
		return result;
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
				model.addAttribute("login",user);
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
	
	@RequestMapping(value="/findSendEmail.admin" ,  method=RequestMethod.POST)
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
	
	// --------------------------- 로그아웃 ------------------------------------
	@RequestMapping(value="/logout.admin")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "/login";
	}
	
	
	// --------------------------- 프로파일 -------------------------------------
	@RequestMapping(value="/profile.admin", method=RequestMethod.GET)
	public String moveProfile(HttpSession httpSession, Model model) {
		ManagerVO user = (ManagerVO) httpSession.getAttribute("login");
		if(user != null) {
			model.addAttribute("user",user);
		}
		return "/profile";
	}
	
	@RequestMapping(value="/profile.admin", method=RequestMethod.POST)
	public String modifyProfile(ManagerVO vo) {
		managerService.updateManager(vo);
		return "redirect:profile.admin";
	}
	
	// --------------------------- Home -------------------------------------
	@RequestMapping(value="/index.admin", method=RequestMethod.GET)
	public String moveIndex() {
		
		return "/index";
	}
	
}

