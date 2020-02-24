package com.spring.aesook.client.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.admin.datalist.service.ManagerBookingServiceImpl;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;
import com.spring.aesook.client.booking.service.MemberBookingCheckService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberBookingController {
	
	@Autowired
	MemberBookingCheckService memberBookingCheckService;
	
	@RequestMapping(value="/bookingList.do", method = RequestMethod.GET)
	public String getBookingList(HttpSession session, Model model) {
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
			List<MemberBookingVO> bookingList = memberBookingCheckService.getBookingList(user);
			model.addAttribute("bookingList", bookingList);
		}
		return "/bookingList";
	}
	
	@RequestMapping(value="/bookingInfo.do", method = RequestMethod.GET)
	public String getBookingInfo(MemberBookingVO vo, Model model) {
		vo = memberBookingCheckService.getBookingInfo(vo.getBookingCode());
		model.addAttribute("bookingInfo", vo);
		return "/bookingInfo";
	}
	
	@RequestMapping(value="/cancelBooking.do", method = RequestMethod.GET)
	public String cancelBooking(MemberBookingVO vo) {
		memberBookingCheckService.cancelBooking(vo.getBookingCode());
		return "/home";
	}

	
	
	
}
