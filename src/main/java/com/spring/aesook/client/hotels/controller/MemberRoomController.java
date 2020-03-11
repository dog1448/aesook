package com.spring.aesook.client.hotels.controller;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.hotels.service.MemberHotelsFacilityService;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.service.MemberRoomService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberRoomController {
	
	@Autowired
	private MemberRoomService memberRoomService;
	@Autowired
	private MemberHotelsFacilityService memberHotelsFacilityService;

	@Autowired
	private MemberHotelsService memberHotelsService;
	
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }
    
	//Show Accommodations
	@RequestMapping(value = "/accommodationsRoom.do", method = RequestMethod.GET)
	public String roomList(@RequestParam(value = "hotelsCode") int hotelsCode, Model model) {
		
		List<MemberRoomVO> list = memberRoomService.getRoomList(hotelsCode);
		MemberHotelsVO hotelsVO = memberRoomService.getHotel(hotelsCode);
		MemberHotelsFacilityVO facilityVO = memberHotelsFacilityService.getFacility(hotelsCode);
		List<MemberReviewVO> reviewVO = memberHotelsService.getReviewList(hotelsCode);
		String scoreAvg = memberHotelsService.getScoreAvg(hotelsCode);
		List<MemberHotelsImageVO> picList = memberRoomService.getAllPic(hotelsCode);
		
		
		model.addAttribute("list",list);		
		model.addAttribute("vo", hotelsVO);
		model.addAttribute("facilityVO", facilityVO);
		model.addAttribute("review", reviewVO);
		model.addAttribute("scoreAvg", scoreAvg);
		model.addAttribute("picList", picList);
		return "/accommodations-room";
	}		
	
	//Show Room Description 
	@RequestMapping(value = "/roomDescription.do", method = RequestMethod.GET)
	public String getRoomDescription(@RequestParam("hotelsCode") int hotelsCode,
			@RequestParam("roomName") String roomSort, 
			HttpSession session, Model model) {
		Date bookingCheckIn = (Date)session.getAttribute("bookingCheckIn");
		Date bookingCheckOut = (Date)session.getAttribute("bookingCheckOut");
		session.setAttribute("bookingCheckIn", bookingCheckIn);
		session.setAttribute("bookingCheckOut", bookingCheckOut);
		MemberRoomVO memberRoomVO = memberRoomService.getRoomDescription(hotelsCode, roomSort);
		MemberHotelsVO memberHotelsVO = memberRoomService.getHotel(hotelsCode);
		List<MemberHotelsImageVO> roomPicList = memberRoomService.getAllRoomPic(hotelsCode, roomSort);
		
		model.addAttribute("memberhotelsVO", memberHotelsVO);
		model.addAttribute("memberRoomVO", memberRoomVO);
		model.addAttribute("roomPicList", roomPicList);
		
		return "/roomDescription";
	}
}
