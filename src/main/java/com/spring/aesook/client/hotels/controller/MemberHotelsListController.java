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
	
	//���� ����Ʈ �Խ� ��Ʈ�ѷ�
	@RequestMapping(value = "/hotelsList.do", method = RequestMethod.GET)
	public String hotelsList(@RequestParam(value = "type", defaultValue = "ȣ��", required = false) String type, 
			@RequestParam(value = "sido") String sido, 
			@RequestParam(value = "region") String region, 
			Model model) {
		
		//int total = memberHotelsListService.countHotelsList(type, sido, region);		
		
		List<MemberHotelsVO> list = memberHotelsListService.selectHotelsList(type, sido, region);
		for(MemberHotelsVO vo : list) {
			System.out.println(vo.toString());
		}
		model.addAttribute("viewAll", list);			
		
		return "/accommodations";
	}
	
	//�˻��� ȣ�� ����Ʈ
	@RequestMapping(value = "/searchedHotelsList.do", method = RequestMethod.POST)
	public String getSearchedHotelsList(MemberHotelsVO vo, Model model) {
		List<MemberHotelsVO> searchedHotelsList = memberHotelsListService.getSearchedHotelsList(vo);
		model.addAttribute("searchedList", searchedHotelsList);
		return "/searchedAccommodations";
	}
}
