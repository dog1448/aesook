package com.spring.aesook.client.review.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.service.MemberReviewService;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberReviewController {
	
	@Autowired
	private MemberReviewService memberReviewService;
	
	@RequestMapping(value = "/writeReview.do", method = RequestMethod.GET)
	public String moveWriteReview(MemberBookingVO vo, HttpSession session, Model model) {
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
			vo = memberReviewService.getBookingInfo(vo.getBookingCode());
			model.addAttribute("bookingInfo", vo);
		}
		return "/writeReview";
	}
	
	@RequestMapping(value = "/insertReview.do", method = RequestMethod.POST)
	public String insertReview(MemberReviewVO vo) {
		memberReviewService.insertReview(vo);
		memberReviewService.updateStatus(vo.getBookingCode());
		return "redirect:bookingList.do";
	}


}
