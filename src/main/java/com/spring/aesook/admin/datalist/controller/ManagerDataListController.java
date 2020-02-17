package com.spring.aesook.admin.datalist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.datalist.service.ManagerHotelsService;
import com.spring.aesook.admin.datalist.service.ManagerBookingService;
import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

@Controller
public class ManagerDataListController {
	
	@Autowired
	private ManagerBookingService managerBookingService;
	
	@Autowired
	private ManagerHotelsService managerHotelService;
	
	//  --------------------------- 예약 테이블 ------------------------------------
	@RequestMapping(value = "/bookingTable.admin", method = RequestMethod.GET)
	public String getBookingTable(Model model) {
		model.addAttribute("bookingList", managerBookingService.getBookingList());
		return "/bookingTable";
	}
	
	@RequestMapping(value = "/bookingInfo.admin", method = RequestMethod.GET)
	public String getBookingInfo(ManagerBookingVO vo, Model model) {
		model.addAttribute("bookingInfo", managerBookingService.getBookingInfo(vo.getBookingCode()));
		System.out.println(vo);
		return "/bookingInfo";
	}
	
	@RequestMapping(value = "/bookingInfo.admin", method = RequestMethod.POST)
	public String setBookingInfo(ManagerBookingVO vo, Model model) {
		managerBookingService.update(vo);
		model.addAttribute("bookingList", managerBookingService.getBookingList());
		return "/bookingTable";
	}
	
	//----------------------------- 호텔 테이블 ------------------------------------
	
	@RequestMapping(value = "/hotelsTable.admin", method = RequestMethod.GET)
	public String moveHotelsTable(Model model) {
		List<ManagerHotelsVO> hotelsList = managerHotelService.getListHotels();
		model.addAttribute("hotelsList",hotelsList);
		return "/hotelsTable";
	}
	
	@RequestMapping(value = "/hotelsInfo.admin", method = RequestMethod.GET)
	public String moveHotelsInfo(@RequestParam int hotelsCode,Model model) {
		ManagerHotelsVO vo = managerHotelService.getHotels(hotelsCode);
		model.addAttribute("hotel",vo);
		return "/hotelsInfo";
	}
	
	@RequestMapping(value = "/updateHotel.admin", method =RequestMethod.POST)
	public String updateHotel(ManagerHotelsVO vo) {
		System.out.println(vo);
		managerHotelService.updateHotel(vo);
		return "redirect:/hotelsTable.admin";
	}
	
	
}
