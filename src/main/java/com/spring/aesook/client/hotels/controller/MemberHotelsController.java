package com.spring.aesook.client.hotels.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberHotelsController {
	
	@RequestMapping(value = "/hotelMove.do", method = RequestMethod.GET)
	public String hotelMove(@RequestParam(value = "type", defaultValue = "h", required = false) String type) {
		if(type.equals("m")) {
			return "/motel";
		} else if(type.equals("p")) {
			return "/pension";
		} else if(type.equals("g")) {
			return "/guesthouse";
		} else if(type.equals("r")) {
			return "/resort";
		}
		return "/hotel";
	}
	
}
