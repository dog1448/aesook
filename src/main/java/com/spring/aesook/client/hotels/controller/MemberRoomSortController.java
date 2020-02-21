package com.spring.aesook.client.hotels.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberRoomSortService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

@Controller
public class MemberRoomSortController {
	
	@Autowired
	private MemberRoomSortService memberRoomSortService;
	
	@RequestMapping(value = "/accommodationsRoom.do", method = RequestMethod.GET)
	public String roomList(@RequestParam(value = "hotelsCode") int hotelsCode, 
			@RequestParam(value="hotelsName") String hotelsName
			,Model model) {
		
		List<MemberRoomSortVO> list = memberRoomSortService.getRoomSortList(hotelsCode);
		
		model.addAttribute("list",list);
		model.addAttribute("hotelsName", hotelsName);
		
		return "/accommodations-room";
	}
}
