package com.spring.aesook.client.hotels.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.aesook.client.hotels.service.MemberHotelsFacilityService;
import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.service.MemberInsertHotelsService;
import com.spring.aesook.client.hotels.service.MemberRoomService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberHotelsController {
	
	private static final String HOTEL = "Hotel";
	private static final String FACILITY = "Facility";
	private static final String ROOMSORT = "RoomType";
	
	@Autowired
	private MemberHotelsService memberHotelsService;
	@Autowired
	private MemberHotelsListService memberHotelsListService;
	@Autowired
	private MemberInsertHotelsService memberInsertHotelsService;
	@Autowired
	private MemberRoomService memberRoomService;
	@Autowired
	private MemberHotelsFacilityService memberHotelsFacilityService;
	
	
	
	// ------------------------------------------------ hotelsMove -----------------------------------------------
	@RequestMapping(value = "/hotelMove.do", method = RequestMethod.GET)
	public String moveHotel(@RequestParam(value = "type", defaultValue = "호텔", required = false) String type
			, Model model) {
		
		List<MemberHotelsVO> list = memberHotelsListService.selectAccommodationTop10ByType(type);
		model.addAttribute("top10", list);
		if(type.equals("모텔")) {
			return "/motel";
		} else if(type.equals("펜션")) {
			return "/pension";
		} else if(type.equals("게스트하우스")) {
			return "/guesthouse";
		} else if(type.equals("리조트")) {
			return "/resort";
		}
		return "/hotel";
	}
	
	
	// ------------------------------------------------ insert My hotels -----------------------------------------------
	//1.Move Terms Of Use
	@RequestMapping(value = "/hostTermsOfUse.do", method = RequestMethod.GET)
	public String MovehostTermsOfUse(HttpSession session) {		
		MemberVO user = (MemberVO)session.getAttribute("login");
		List<MemberHotelsVO> list = memberHotelsService.getMyHotels(user);
		
		if(list.isEmpty()) {			
			return "/hostTermsOfUse";
		}else {			
			return "redirect:registeredAccommodation.do";			
		}
		
	}
	
	//2. Move InsertHotels
	@RequestMapping(value = "/insertTerm.do", method = RequestMethod.POST)
	public String insertTerm(Model model){
		return "/insertHotels";
	}
	
	//3. Move InsertRoomSort
	@RequestMapping(value="/inserHotels.do", method = RequestMethod.POST)
	public String inserHotels(MemberHotelsVO memberHotelsVO, MemberHotelsFacilityVO memberFacilityVO,
			HttpSession httpSession) {
		
		if(httpSession.getAttribute(HOTEL) != null || httpSession.getAttribute(FACILITY) != null) {
			httpSession.removeAttribute(HOTEL);
			httpSession.removeAttribute(FACILITY);
		}
		
		httpSession.setAttribute(HOTEL, memberHotelsVO);
		httpSession.setAttribute(FACILITY, memberFacilityVO);
		return "/insertRoomSort";
	}
	
	//4. Move InsertRoom
	@RequestMapping(value="/insertRoomSort.do" , method=RequestMethod.POST)
	public String insertRoomSort(MemberRoomVO roomList, HttpSession httpSession, Model model) {
		 if(httpSession.getAttribute(ROOMSORT) != null) {
			 httpSession.removeAttribute(ROOMSORT);
		 }
		 
		 if(roomList != null) {
			 httpSession.setAttribute(ROOMSORT, roomList.getRoomList()); // roomSort = List<memberRoomVO>
		 }
		return "/insertRoom";
	}
	
	//5. Move Finish
	@RequestMapping(value="/insertRoom.do", method=RequestMethod.POST)
	public String inserFinish(MemberRoomVO roomList, HttpSession httpSession) {
		
		// Data Setting 
		int hotelsCode = memberHotelsService.getHotelsCode();
		MemberVO user = (MemberVO) httpSession.getAttribute("login");
		MemberHotelsVO hotels = (MemberHotelsVO) httpSession.getAttribute(HOTEL);
		MemberHotelsFacilityVO facility = (MemberHotelsFacilityVO) httpSession.getAttribute(FACILITY);
		List<MemberRoomVO> roomSortList = (List<MemberRoomVO>) httpSession.getAttribute(ROOMSORT);
		for (MemberRoomVO ri : roomSortList) {
			System.out.println(ri);
		}
		System.out.println("====================================");
		List<MemberRoomVO> roomNameList = roomList.getRoomList();
		
		// Insert Hotel / Facility
		memberInsertHotelsService.insertHotelsFacility(hotels, facility, user, hotelsCode);
		
		// Insert Room
		memberRoomService.insertRoom(roomSortList, roomNameList, hotelsCode);;
		
		// Remove session 
		httpSession.removeAttribute(HOTEL);
		httpSession.removeAttribute(FACILITY);
		httpSession.removeAttribute(ROOMSORT);
		return "redirect:registeredAccommodation.do";
	}
	
	
	
	//Check Host
	@RequestMapping(value = "/hostChk.do", method = RequestMethod.GET)
	@ResponseBody
	public int checkHost(MemberVO vo) {
		List<MemberHotelsVO> list = memberHotelsService.getMyHotels(vo);
		int result=0;
		if(list.isEmpty()) {
			result=1;
			return result;
		}else {			
			return result;			
		}
	}

	@RequestMapping(value = "/registeredAccommodation.do", method = RequestMethod.GET)
	public String getMyHotels(HttpSession session, Model model){
		MemberVO user = (MemberVO)session.getAttribute("login");
		if(user != null) {
			model.addAttribute("user", user);
			List<MemberHotelsVO> hotelsList = memberHotelsService.getMyHotels(user);
			model.addAttribute("hotels", hotelsList);
		}
		return "/registeredAccommodation";
	}
	
	
	// ------------------------------------------------ Modify My hotels -----------------------------------------------
    @RequestMapping(value = "/moveModifyHotel.do", method = RequestMethod.GET)
    public String moveModifyHotel(@RequestParam(value = "hotelsCode")int hotelsCode, HttpSession session, Model model){
        MemberVO user = (MemberVO)session.getAttribute("login");
        if(user != null) {
            MemberHotelsVO hotelsVO = memberRoomService.getHotel(hotelsCode);
            MemberHotelsFacilityVO facilityVO = memberHotelsFacilityService.getFacility(hotelsCode);
            model.addAttribute("hotelsVO", hotelsVO);
            model.addAttribute("facilityVO", facilityVO);
            
        }
        return "/modifyHotels";
    }
	
    @RequestMapping(value = "/updateHotels.do",method = RequestMethod.POST)
    public String ModifyHotel(MemberHotelsVO memberHotelsVO, MemberHotelsFacilityVO memberFacilityVO){
    	memberHotelsService.updateHotels(memberHotelsVO);
        memberHotelsFacilityService.updateFacility(memberFacilityVO);
        return "redirect:/registeredAccommodation.do";
    }
}
