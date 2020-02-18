package com.spring.aesook.client.message.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberMessageController {
	
	@RequestMapping(value = "message.do", method = RequestMethod.GET)
	public String moveMessage() {
		return "/messageBoard";
	}
	
	@RequestMapping(value = "messageForm.do", method = RequestMethod.GET)
	public String moveMessageForm() {
		return "/messageForm";
	}
	
	@RequestMapping(value = "messageWrite.do", method = RequestMethod.GET)
	public String moveMessageWrite() {
		return "/messageWrite";
	}
}
