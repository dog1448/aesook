package com.spring.aesook.client.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.booking.service.MemberBookingCheckService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.kakao.service.KakaoService;
import com.spring.aesook.common.kakao.vo.KakaoPayApprovalVO;
import com.spring.aesook.common.kakao.vo.KakaoPayReadyVO;

@Controller
public class MemberBookingPaymentController {

	@Autowired
	MemberBookingCheckService memberBookingCheckService;
	@Autowired
	KakaoService kakaoService;
	
	//결제 페이지로 이동
	@RequestMapping(value="/movePayment.do", method = RequestMethod.POST)
	public String movePayment(HttpSession session, MemberBookingVO vo, Model model) {
		MemberVO user = (MemberVO)session.getAttribute("login");
		vo.setMemberId(user.getMemberId());
		List<String> possibleRoom = memberBookingCheckService.getRoomPossible(vo);
		model.addAttribute("possibleRoom", possibleRoom);
		model.addAttribute("booking", vo);
		return "/payment";
	}
	
	@RequestMapping(value="/kakaoPay.do", method=RequestMethod.POST)
	public String moveKakaoPay(MemberBookingVO vo, HttpSession httpSession) {
		vo.setMemberId("fish");
		vo.setHotelsName("야놀자");
		vo.setRoomSort("꽃방");
		vo.setBookingTotalPrice(50000);
		KakaoPayReadyVO ready = kakaoService.kakaoPayReady(vo);
		vo.setTid(ready.getTid());
		System.out.println(ready);
		httpSession.setAttribute("kakao", vo);
		return "redirect:"+ ready.getNext_redirect_pc_url();
	}
	
	@RequestMapping(value="/kakaoPaySuccess.do", method=RequestMethod.GET)
	public String kakako(HttpSession session, @RequestParam("pg_token")String pg_token) {
		MemberBookingVO vo = (MemberBookingVO) session.getAttribute("kakao");
		vo.setPg_token(pg_token);
		System.out.println(vo);
		KakaoPayApprovalVO s = kakaoService.kakaoPayInfo(vo);
		System.out.println(s);
		return "/payment";
	}
	
}
