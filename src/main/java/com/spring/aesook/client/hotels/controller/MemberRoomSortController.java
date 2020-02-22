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
	
	//������ ��� �Խ��ϴ� ��Ʈ�ѷ���....����
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
	
	//���� ����ϴ� �������� �̵��ϴ� ��Ʈ�ѷ���...����
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.GET)
	public String moveInsertRoomSort() {		
		return "/insertRoomSort";
	}
	
	//���� ����ϴ� ��Ʈ�ѷ���...����
	@RequestMapping(value = "/insertRoomSort.do", method = RequestMethod.POST)
	public String InsertRoomSort(MemberRoomSortVO vo) {
		
		return "/insertRoomSort";
	}
}
