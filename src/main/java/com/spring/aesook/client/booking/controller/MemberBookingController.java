package com.spring.aesook.client.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.client.booking.service.MemberBookingCheckService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

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
	
	
	@RequestMapping(value="/canceledBookingList.do", method = RequestMethod.GET)
	public String getCanceledBookingList(HttpSession session, Model model) {
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
			List<MemberBookingVO> canceledBookingList = memberBookingCheckService.getCanceledBookingList(user);
			model.addAttribute("canceledBookingList", canceledBookingList);
		}
		return "/canceledBookingList";
	}
	
	@RequestMapping(value="/bookingInfo.do", method = RequestMethod.GET)
	public String getBookingInfo(MemberBookingVO bookingVO, HttpSession session, Model model) {
		MemberVO userVO = (MemberVO)session.getAttribute("login");
		MemberReviewVO reviewVO;
		if(userVO != null) {
			model.addAttribute("user", userVO);
			bookingVO = memberBookingCheckService.getBookingInfo(bookingVO.getBookingCode());
			model.addAttribute("bookingInfo", bookingVO);
			reviewVO = memberBookingCheckService.getReview(bookingVO.getBookingCode());
			model.addAttribute("review", reviewVO);
		}
		return "/bookingInfo";
	}
	
	@RequestMapping(value="/cancelBooking.do", method = RequestMethod.POST)
	public String cancelBooking(MemberBookingVO vo) {
		memberBookingCheckService.cancelBooking(vo.getBookingCode());
		return "redirect:canceledBookingList.do";
	}
	
	@RequestMapping(value="/payment.do", method = RequestMethod.GET)
	public String movePayment() {
		return "/payment";
	}
	
	
}
