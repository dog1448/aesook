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
	
	// 숙소 리스트 게시 컨트롤러
	@RequestMapping(value = "/hotelsList.do", method = RequestMethod.GET)
	public String moveHotelsList(@RequestParam(value = "type", defaultValue = "호텔", required = false) String type, 
			@RequestParam(value = "sido") String sido, 
			@RequestParam(value = "region") String region, 
			Model model) {
		
		//int total = memberHotelsListService.countHotelsList(type, sido, region);		
		
		List<MemberHotelsVO> list = memberHotelsListService.selectHotelsList(type, sido, region);
		model.addAttribute("viewAll", list);			
		model.addAttribute("type", type);			
		model.addAttribute("sido", sido);			
		model.addAttribute("region", region);			
		
		return "/accommodations";
	}
	
	//정렬된 숙소 리스트
	@RequestMapping(value = "/hotelsSortedList.do", method = RequestMethod.GET)
	public String moveHotelsList(@RequestParam(value = "type", defaultValue = "호텔", required = false) String type, 
			@RequestParam(value = "sido") String sido, 
			@RequestParam(value = "region") String region, 
			Model model, MemberHotelsVO vo) {
		List<MemberHotelsVO> list = memberHotelsListService.selectHotelsList(type, sido, region, vo.getSortCondition());
		model.addAttribute("viewAll", list);			
		model.addAttribute("type", type);			
		model.addAttribute("sido", sido);			
		model.addAttribute("region", region);			
		return "/accommodations";
	}
	
	// 검색된 호텔 리스트
	@RequestMapping(value = "/searchedHotelsList.do", method = RequestMethod.POST)
	public String getSearchedHotelsList(MemberHotelsVO vo, Model model) {
		String searchKeyword = vo.getSearchKeyword();
		String searchCondition = vo.getSearchCondition();
		List<MemberHotelsVO> searchedHotelsList = memberHotelsListService.getSearchedHotelsList(vo);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("searchCondition", searchCondition);
		model.addAttribute("searchedList", searchedHotelsList);
		return "/searchedAccommodations";
	}
	
	//검색된 호텔 리스트를 정렬 및 재검색
	@RequestMapping(value = "/searchedHotelsListOption.do", method = RequestMethod.GET)
	public String getSearchedHotelsListOption(MemberHotelsVO vo, Model model) {
		String searchKeyword = vo.getSearchKeyword();
		String searchCondition = vo.getSearchCondition();
		List<MemberHotelsVO> searchedHotelsList = memberHotelsListService.getSearchedHotelsList(vo);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("searchCondition", searchCondition);
		model.addAttribute("searchedList", searchedHotelsList);
		return "/searchedAccommodations";
	}
}
