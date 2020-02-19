package com.spring.aesook.client.hotels.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsListService;

@Controller
public class MemberHotelsListController {
	
	@Autowired
	MemberHotelsListService memberHotelsListService;
	
	@RequestMapping(value = "/hotelsList.do", method = RequestMethod.GET)
	public String hotelsList(@RequestParam(value = "type", defaultValue = "хёез", required = false) String type, 
			@RequestParam(value = "sido") String sido, @RequestParam(value = "region") String region) {
		
		int total = memberHotelsListService.countHotelsList(type, sido, region);
		System.out.println(total);
		
		return "/accommodations";
	}
}
