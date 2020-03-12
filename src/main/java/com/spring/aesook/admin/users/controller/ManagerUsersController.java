package com.spring.aesook.admin.users.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.users.service.ManagerUsersService;
import com.spring.aesook.admin.users.vo.ManagerUsersVO;


@Controller
public class ManagerUsersController {
	@Autowired
	ManagerUsersService managerUsersService;
	
	@RequestMapping(value = "/usersTable.admin", method = RequestMethod.GET)
	public String showUsersTable(Model model) {
		List<ManagerUsersVO> usersList = managerUsersService.getManagerUsersList();
		model.addAttribute("usersList", usersList);
		return "/usersTable";
	}
	
	
	@RequestMapping(value = "/usersInfo.admin", method = RequestMethod.GET)
	public String usersInfoPreset(@RequestParam("memberId") String memberId, Model model) {
		ManagerUsersVO usersInfo = managerUsersService.getManagerUsers(memberId);
		model.addAttribute("usersInfo", usersInfo);
		return "/usersInfo";
	}
	
	@RequestMapping(value = "/updateUsersInfo.admin", method = RequestMethod.POST)
	public String updateUsersInfo(ManagerUsersVO vo) {
		managerUsersService.modifyManagerUsers(vo);
		return "redirect:usersTable.admin";
	}
	
}
