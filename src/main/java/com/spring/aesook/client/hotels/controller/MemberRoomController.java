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

import com.spring.aesook.admin.rule.service.ManagerRuleService;
import com.spring.aesook.admin.rule.vo.ManagerRuleVO;
import com.spring.aesook.client.hotels.service.MemberHotelsFacilityService;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.service.MemberRoomService;
import com.spring.aesook.client.hotels.service.MemberRoomSortService;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Controller
public class MemberRoomController {
	
	@Autowired
	private MemberRoomService memberRoomService;
	@Autowired
	private MemberHotelsFacilityService memberHotelsFacilityService;
	@Autowired
	private MemberHotelsService memberHotelsService;
	@Autowired
  private ManagerRuleService managerRuleService;
	@Autowired
	private MemberRoomSortService memberRoomSortService;


	
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
		ManagerRuleVO managerRuleVO = managerRuleService.getRule(memberHotelsVO.getHotelsType());
		List<MemberHotelsImageVO> roomPicList = memberRoomService.getAllRoomPic(hotelsCode, roomSort);
		
		model.addAttribute("memberhotelsVO", memberHotelsVO);
		model.addAttribute("memberRoomVO", memberRoomVO);
		model.addAttribute("roomPicList", roomPicList);
		model.addAttribute("memberRule", managerRuleVO);
		return "/roomDescription";
	}
	
	// ---------------------------------- modifyRoomSort --------------------------------------------
	@RequestMapping(value="/modifyRoomSort.do", method = RequestMethod.GET)
	public String moveModifyRoomSort(HttpSession httpSession, Model model) {
		MemberVO user = (MemberVO) httpSession.getAttribute("login");
		if (user != null) {
			MemberHotelsVO hotels = memberHotelsService.getMyHotels(user).get(0);
			if (hotels != null) {
				MemberRoomVO room = new MemberRoomVO();
				room.setHotelsCode(hotels.getHotelsCode());
				List<MemberRoomVO> roomSortList = memberRoomService.getRoomSortList(room);
				List<MemberRoomVO> roomNameList = memberRoomService.getRoomList(room);
				model.addAttribute("roomSortList", roomSortList);
				model.addAttribute("roomNameList", roomNameList);
				model.addAttribute("hotelsCode", hotels.getHotelsCode());
			}
		} else {
			model.addAttribute("message", "등록된 숙소가 없습니다.");
			return "/hostTermsOfUse";
		}
		return "/modifyRoomSort";
	}
	
	@RequestMapping(value="/modifyInsertRoomSort.do", method = RequestMethod.POST) 
	public String insertRoomSort(MemberRoomVO vo) {
		memberRoomSortService.insertRoomSort(vo);
		return "redirect:modifyRoomSort.do";
	}
	
	@RequestMapping(value="/modifyUpdateRoomSort.do", method = RequestMethod.POST)
	public String modifyRoomSort(MemberRoomVO vo) {
		memberRoomSortService.updateRoomSort(vo);
		return "redirect:modifyRoomSort.do";
	}
	
	@RequestMapping(value="/modifyDeleteRoomSort.do", method = RequestMethod.POST)
	public String deleteRoomSort(MemberRoomVO vo) {
		memberRoomSortService.deleteRoomSort(vo);
		return "redirect:modifyRoomSort.do";
	}
	
	
	// ---------------------------------- modifyRoom --------------------------------------------
	@RequestMapping(value="/modifyRoom", method = RequestMethod.GET)
	public String moveModifyRoom(HttpSession httpSession, Model model) {
		MemberVO user = (MemberVO) httpSession.getAttribute("login");
		if (user != null) {
			MemberHotelsVO hotels = memberHotelsService.getMyHotels(user).get(0);
			if (hotels != null) {
				MemberRoomVO room = new MemberRoomVO();
				room.setHotelsCode(hotels.getHotelsCode());
				List<MemberRoomVO> roomList = memberRoomService.getRoomList(room);
				model.addAttribute("roomList",roomList);
				model.addAttribute("hotelsCode", hotels.getHotelsCode());
			}
		} else {
			model.addAttribute("message", "등록된 숙소가 없습니다.");
			return "/hostTermsOfUse";
		}
		return "/modifyRoom";
	}
	
	@RequestMapping(value="/deleteRoom.do", method=RequestMethod.POST)
	public String deleteRoom(MemberRoomVO vo) {
		memberRoomService.deleteRoom(vo);
		return "redirect:modifyRoom.do";
	}
	
	public String insertRoom(MemberRoomVO vo) {
		memberRoomSortService.insertRoomSort(vo);
		return "";
	}
	
}
