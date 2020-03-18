package com.spring.aesook.client.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.client.booking.service.MemberBookingHotelsService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberBookingHotelsController {
	
	@Autowired
	private MemberHotelsService memberHotelsService;
	@Autowired
	private MemberBookingHotelsService memberBookingHotelsService;
	
    @RequestMapping(value="/bookingHotelsList.do", method=RequestMethod.GET)
    public String moveBookingHotelsList(HttpSession httpSession, Model model) {
    	MemberVO user = (MemberVO) httpSession.getAttribute("login");
		if (user != null) {
			List<MemberHotelsVO> hotels = memberHotelsService.getMyHotels(user);
			if (!hotels.isEmpty()) {
				MemberBookingVO booking = new MemberBookingVO();
				booking.setHotelsCode(hotels.get(0).getHotelsCode());
				List<MemberBookingVO> bookingHotelsList = memberBookingHotelsService.getMemberBookingList(booking);
				model.addAttribute("bookingHotelsList", bookingHotelsList);
			} else {
				model.addAttribute("message", "등록된 숙소가 없습니다.");
				return "/successHostTerm";
			}
		} 
    	return "/bookingHotelsList";
    }
    
    
	
}
