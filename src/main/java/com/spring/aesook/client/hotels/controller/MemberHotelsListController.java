package com.spring.aesook.client.hotels.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

@Controller
public class MemberHotelsListController {
	
	@Autowired
	MemberHotelsListService memberHotelsListService;
	
	//숙소 리스트 게시 컨트롤러
	@RequestMapping(value = "/hotelsList.do", method = RequestMethod.GET)
	public String hotelsList(@RequestParam(value = "type", defaultValue = "호텔", required = false) String type, 
			@RequestParam(value = "sido") String sido, 
			@RequestParam(value = "region") String region, 
			Model model) {
		
		int total = memberHotelsListService.countHotelsList(type, sido, region);		
		
		List<MemberHotelsVO> list = memberHotelsListService.selectHotelsList(type, sido, region);
		model.addAttribute("viewAll", list);			
		
		return "/accommodations";
	}
}
