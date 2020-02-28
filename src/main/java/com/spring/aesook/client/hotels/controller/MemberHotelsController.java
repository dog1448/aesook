package com.spring.aesook.client.hotels.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberHotelsController {
	
	@Autowired
	private MemberHotelsService memberHotelsService;
	@Autowired
	MemberHotelsListService memberHotelsListService;
	
	@RequestMapping(value = "/hotelMove.do", method = RequestMethod.GET)
	public String moveHotel(@RequestParam(value = "type", defaultValue = "호텔", required = false) String type
			, Model model) {
		
		List<MemberHotelsVO> list = memberHotelsListService.selectAccommodationTop10ByType(type);
		model.addAttribute("top10", list);
		if(type.equals("모텔")) {
			return "/motel";
		} else if(type.equals("펜션")) {
			return "/pension";
		} else if(type.equals("게스트하우스")) {
			return "/guesthouse";
		} else if(type.equals("리조트")) {
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
	
	//Insert Accommodation
	@RequestMapping(value="/insertHotelsAll.do", method = RequestMethod.POST)
	public String inserHotelsAll(MemberHotelsVO memberHotelsVO, MemberHotelsFacilityVO memberFacilityVO, Model model) {
		model.addAttribute("memberHotelsVO", memberHotelsVO);
		model.addAttribute("memberFacilityVO", memberFacilityVO);
		return "/insertRoomSort";
	}

	//Insert Room
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.POST)
	public String InsertRoomSort(MemberRoomVO memberRoomVO, @RequestParam("memberHotelsVO") MemberHotelsVO memberHotelsVO,
			@RequestParam("memberFacilityVO") MemberHotelsFacilityVO memberFacilityVO ,Model model) {	
		
		model.addAttribute("memberHotelsVO", memberHotelsVO);
		model.addAttribute("memberFacilityVO", memberFacilityVO);
		model.addAttribute("memberRoomVO", memberRoomVO);
		
		return "/insertPic";
	}
	
	//TermsOfUse
	@RequestMapping(value = "/hostTermsOfUse.do", method = RequestMethod.GET)
	public String hostTermsOfUse(
			) {
		
		return "/hostTermsOfUse";
	}
	
	@RequestMapping(value = "/registeredAccommodation.do", method = RequestMethod.GET)
	public String getMyHotels(HttpSession session, Model model){
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
			MemberHotelsVO vo = memberHotelsService.getMyHotels(user);
			model.addAttribute("hotels", vo);
		}
		return "/registeredAccommodation";
	}
}
