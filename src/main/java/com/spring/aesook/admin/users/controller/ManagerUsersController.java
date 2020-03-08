package com.spring.aesook.admin.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.admin.users.service.ManagerUsersService;


@Controller
public class ManagerUsersController {
	@Autowired
	ManagerUsersService managerUsersService;
	
	@RequestMapping(value = "/usersInfo.admin", method = RequestMethod.GET)
	public String move1() {
		
		return "/usersInfo";
	}
	
	@RequestMapping(value = "usersTable.admin", method = RequestMethod.GET)
	public String move2() {
		
		return "/usersTable";
	}
}
