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
	
	//숙소의 방들 게시하는 컨트롤러임....ㅎㅎ
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
	
	//객실 등록하는 페이지로 이동하는 컨트롤러임...ㅎㅎ
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.GET)
	public String moveInsertRoomSort() {		
		return "/insertRoomSort";
	}
	
	//객실 등록하는 컨트롤러임...ㅎㅎ
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.POST)
	public String InsertRoomSort(MemberRoomSortVO vo) {
		
		return "/insertRoomSort";
	}
}
