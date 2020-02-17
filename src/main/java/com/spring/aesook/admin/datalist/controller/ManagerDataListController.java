package com.spring.aesook.admin.datalist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.admin.datalist.service.ManagerBookingService;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

@Controller
public class ManagerDataListController {
	
	@Autowired
	private ManagerBookingService managerBookingService;
	
	//  --------------------------- 예약 테이블 ------------------------------------
	@RequestMapping(value = "/bookingTable.admin", method = RequestMethod.GET)
	public String getBookingTable(Model model) {
		model.addAttribute("bookingList", managerBookingService.getBookingList());
		return "/bookingTable";
	}
	
	@RequestMapping(value = "/bookingInfo.admin", method = RequestMethod.GET)
	public String getBookingInfo(ManagerBookingVO vo, Model model) {
		model.addAttribute("bookingInfo", managerBookingService.getBookingInfo(vo.getBookingCode()));
		return "/bookingInfo";
	}
	
	@RequestMapping(value = "/bookingInfo.admin", method = RequestMethod.POST)
	public String setBookingInfo(ManagerBookingVO vo) {
		managerBookingService.update(vo);
		return "/bookingInfo";
	}
	
}
