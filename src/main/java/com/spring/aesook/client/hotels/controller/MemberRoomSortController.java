package com.spring.aesook.client.hotels.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsFacilityService;
import com.spring.aesook.client.hotels.service.MemberRoomSortService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

@Controller
public class MemberRoomSortController {
	
	@Autowired
	private MemberRoomSortService memberRoomSortService;
	@Autowired
	private MemberHotelsFacilityService memberHotelsFacilityService;
	
	//숙소의 방들 게시하는 컨트롤러임
	@RequestMapping(value = "/accommodationsRoom.do", method = RequestMethod.GET)
	public String roomList(@RequestParam(value = "hotelsCode") int hotelsCode, Model model) {
		
		List<MemberRoomSortVO> list = memberRoomSortService.getRoomSortList(hotelsCode);
		MemberHotelsVO hotelsVO = memberRoomSortService.getHotel(hotelsCode);
		MemberHotelsFacilityVO facilityVO = memberHotelsFacilityService.getFacility(hotelsCode);
		model.addAttribute("list",list);		
		model.addAttribute("vo", hotelsVO);
		model.addAttribute("facilityVO", facilityVO);
		
		return "/accommodations-room";
	}
	
	//객실 등록하는 페이지로 이동하는 컨트롤러임
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.GET)
	public String moveInsertRoomSort() {		
		return "/insertRoomSort";
	}
	
	//객실 등록하는 컨트롤러임
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.POST)
	public String InsertRoomSort(MemberRoomSortVO vo) {
		
		return "/insertRoomSort";
	}
	
	//방 상세 설명하는 페이지에 방 정보 가져오는 컨트롤러
	@RequestMapping(value = "/roomDescription.do", method = RequestMethod.GET)
	public String getRoomDescription(@RequestParam("hotelsCode") int hotelsCode,
			@RequestParam("sortType") String sortType, Model model) {
		MemberRoomSortVO memberSortVO = memberRoomSortService.getRoomDescription(hotelsCode, sortType);
		MemberHotelsVO memberHotelsVO = memberRoomSortService.getHotel(hotelsCode);
		
		model.addAttribute("memberhotelsVO", memberHotelsVO);
		model.addAttribute("memberSortVO", memberSortVO);
		
		return "/roomDescription";
	}
}
