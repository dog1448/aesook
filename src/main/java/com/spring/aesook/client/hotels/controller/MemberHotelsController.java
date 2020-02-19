package com.spring.aesook.client.hotels.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberHotelsController {
	
	@Autowired
	private MemberHotelsService memberHotelsService;
	
	@RequestMapping(value = "/hotelMove.do", method = RequestMethod.GET)
	public String moveHotel(@RequestParam(value = "type", defaultValue = "h", required = false) String type) {
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
	
	@RequestMapping(value = "/insertHotels.do", method = RequestMethod.GET)
	public String moveInsertHotels(HttpSession session, Model model){
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
		}
		return "/insertHotels";
	}
	
	@RequestMapping(value="/insertHotelsAll.do", method = RequestMethod.POST)
	public String inserHotelsAll(MemberHotelsVO hotelsVO, MemberRoomSortVO roomSortVO) {
		memberHotelsService.insertHotels(hotelsVO);
		memberHotelsService.insertSortType(roomSortVO);
		return "/insertHotels";
	}
}
