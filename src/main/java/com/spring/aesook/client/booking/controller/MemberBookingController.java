package com.spring.aesook.client.booking.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.client.booking.service.MemberBookingCheckService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberBookingController {
	
	@Autowired
	MemberBookingCheckService memberBookingCheckService;
	
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }
	
	//Show your bookingList
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
	
	//Show your CancelBookingList
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
	
	//Show your Detail BookingInfo
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
	
	//Cancel the Booking
	@RequestMapping(value="/cancelBooking.do", method = RequestMethod.POST)
	public String cancelBooking(MemberBookingVO vo) {
		memberBookingCheckService.cancelBooking(vo.getBookingCode());
		return "redirect:canceledBookingList.do";
	}
	
	//Search Possible Room by selected Date
	@RequestMapping(value="/getPossibleBooking.do", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getPossibleBooking(MemberBookingVO vo, HttpSession session) {
		session.setAttribute("bookingCheckIn", vo.getBookingCheckIn());
		session.setAttribute("bookingCheckOut", vo.getBookingCheckOut());
		return memberBookingCheckService.getPossibleBooking(vo);
	}
	
	//클라이언트가 선택한 날짜에 특정 roomSort의 어떤 roomName들이 예약 가능한지 리스트 뽑기
	@RequestMapping(value="/getRoomPossible.do", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getRoomPossible(MemberBookingVO vo) {
		return memberBookingCheckService.getRoomPossible(vo);
	}
	
		
}
