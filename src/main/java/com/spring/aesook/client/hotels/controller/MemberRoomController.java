package com.spring.aesook.client.hotels.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.client.hotels.service.MemberHotelsFacilityService;
import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.service.MemberRoomService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberRoomController {
	
	@Autowired
	private MemberRoomService memberRoomService;
	@Autowired
	private MemberHotelsFacilityService memberHotelsFacilityService;

	@Autowired
	private MemberHotelsService memberHotelsService;
	
	//Show Accommodations
	@RequestMapping(value = "/accommodationsRoom.do", method = RequestMethod.GET)
	public String roomList(@RequestParam(value = "hotelsCode") int hotelsCode, Model model) {
		
		List<MemberRoomVO> list = memberRoomService.getRoomList(hotelsCode);
		MemberHotelsVO hotelsVO = memberRoomService.getHotel(hotelsCode);
		MemberHotelsFacilityVO facilityVO = memberHotelsFacilityService.getFacility(hotelsCode);
		List<MemberReviewVO> reviewVO = memberHotelsService.getReviewList(hotelsCode);
		String scoreAvg = memberHotelsService.getScoreAvg(hotelsCode);
		model.addAttribute("list",list);		
		model.addAttribute("vo", hotelsVO);
		model.addAttribute("facilityVO", facilityVO);
		model.addAttribute("review", reviewVO);
		model.addAttribute("scoreAvg", scoreAvg);
		return "/accommodations-room";
	}		
	
	//Show Room Description 
	@RequestMapping(value = "/roomDescription.do", method = RequestMethod.GET)
	public String getRoomDescription(@RequestParam("hotelsCode") int hotelsCode,
			@RequestParam("roomName") String roomName, Model model) {
		MemberRoomVO memberRoomVO = memberRoomService.getRoomDescription(hotelsCode, roomName);
		MemberHotelsVO memberHotelsVO = memberRoomService.getHotel(hotelsCode);
		
		model.addAttribute("memberhotelsVO", memberHotelsVO);
		model.addAttribute("memberSortVO", memberRoomVO);
		
		return "/roomDescription";
	}
	
	//Room Name check
	@RequestMapping(value = "/roomNameChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberRoomVO vo){
    	int result = memberRoomService.roomNameCheck(vo);
    	return result;
    } 
}
