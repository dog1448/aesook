package com.spring.aesook.client.image.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.hotels.service.MemberRoomService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.image.service.MemberHotelsImageService;
import com.spring.aesook.client.image.service.MemberUpdateHotelsMainImageService;
import com.spring.aesook.client.image.service.MemberUpdateHotelsRoomMainImageService;
import com.spring.aesook.client.image.service.MemberUpdateHotelsRoomSortImageService;
import com.spring.aesook.client.image.service.MemberUpdateImageBrnService;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

import oracle.net.aso.h;

@Controller
public class MemberImageController {
	
	@Autowired
	private MemberUpdateImageBrnService memberUpdateImageBrnService; 
	@Autowired
	private MemberHotelsImageService memberHotelsImageService;
	@Autowired
	private MemberHotelsService memberHotelsService;
	@Autowired
	private MemberUpdateHotelsMainImageService memberUpdateHotelsMainImageService;
	@Autowired
	private MemberRoomService memberRoomService;
	@Autowired 
	private MemberUpdateHotelsRoomSortImageService memberUpdateHotelsRoomSortImageService;
	@Autowired
	private MemberUpdateHotelsRoomMainImageService memberUpdateHotelsRoomMainImageService;
	
    // --------------------------- 사업자 등록 -------------------------------------
    @RequestMapping(value = "/brn.do", method = RequestMethod.GET)
    public String moveBrn(HttpSession httpSession, Model model) {
    	MemberVO user = (MemberVO) httpSession.getAttribute("login"); 
    	model.addAttribute("user", user);
    	return "/brn";
    }
    
    @RequestMapping(value = "/brn.do", method = RequestMethod.POST)
    public String insertBrn(MultipartFile file, HttpSession httpSession, Model model) {
    	MemberVO user = (MemberVO) httpSession.getAttribute("login");
    	if(user != null) {
			memberUpdateImageBrnService.updateImageBrn(file, user);
    		model.addAttribute("check","upBrn");
    		return "/modify_info";
    	}
    	model.addAttribute("check","noBrn");
    	return "/brn";
    }
    
    
    // --------------------------- 호텔이미지 보기 -------------------------------------
    @RequestMapping(value = "/hotelsPic.do", method = RequestMethod.GET)
    public String moveHotelsImage(HttpSession httpSession, Model model) {
    	MemberVO user = (MemberVO) httpSession.getAttribute("login");
    	List<MemberHotelsVO> hotels =  memberHotelsService.getMyHotels(user);
    	if (!hotels.isEmpty()) {
    		List<String> roomTypeList = memberRoomService.getRoomSortTypeList(hotels.get(0).getHotelsCode());
    		model.addAttribute("hotels", hotels.get(0));
    		model.addAttribute("roomTypeList", roomTypeList);
    		List<MemberHotelsImageVO> imageList = memberHotelsImageService.getHotelsImageList(user);
    		for (MemberHotelsImageVO mainImage : imageList) {
    			if (mainImage.getHotelsImageStatus().equals("M")) {
    				model.addAttribute("mainImage", mainImage);
    				break;
    			}
    		}
    		model.addAttribute("imageList", imageList);
    		return "/hotelsPic";
    	}
    	model.addAttribute("noHotel", "noHotel");
    	return "/hostTermsOfUse";
    }
    
    @RequestMapping(value="/hotelsMainPic.do", method=RequestMethod.GET)
    @ResponseBody
    public MemberHotelsImageVO updateHotelsMainImage(MemberHotelsImageVO vo) {
    	return memberUpdateHotelsMainImageService.updateHotelsMainImage(vo);
    }
    
    @RequestMapping(value="/hotelsRoomSort.do", method=RequestMethod.POST)
    public String updateRoomSort(@RequestParam("hotelsImageNo") List<Integer> imageNoList, MemberHotelsImageVO vo) {
    	memberUpdateHotelsRoomSortImageService.updateRoomSort(imageNoList, vo);
    	return "redirect:hotelsPic.do";
    }
    
    @RequestMapping(value="/hotelsRoomMainPic.do", method=RequestMethod.GET)
    @ResponseBody
    public MemberHotelsImageVO updateHotelsRoomMainImage(MemberHotelsImageVO vo) {
    	return memberUpdateHotelsRoomMainImageService.updateHotelsRoomMainImage(vo);
    }
    
    
    @RequestMapping(value="/hotelsPicDelete.do", method=RequestMethod.POST)
    public String deleteHotelsImage(@RequestParam("hotelsImageNo") List<Integer> hotelsImageNoList,
    		@RequestParam("hotelsImageName") List<String> hotelsImageNameList, HttpSession httpSession) {
    		MemberVO user = (MemberVO) httpSession.getAttribute("login");
    	memberHotelsImageService.deleteHotelsImage(hotelsImageNoList, hotelsImageNameList, user);
    	return "redirect:hotelsPic.do";
    }
    
    
 // ------------------------------ 호텔이미지 등록 -------------------------------------
	@RequestMapping(value="/insertHotelsPic.do" , method = RequestMethod.GET)
	public String moveInsertPic(@RequestParam("hotelsCode") int hotelsCode, Model model) {
		model.addAttribute("hotelsCode", hotelsCode);
		return "/insertHotelsPic";
	}
	
	@RequestMapping(value="/insertHotelsPic.do" , method = RequestMethod.POST)
	public String insertPic(MultipartHttpServletRequest files, HttpSession session, Model model, MemberHotelsVO hotels) {
		MemberVO user = (MemberVO) session.getAttribute("login");
		if (user != null) {
			memberHotelsImageService.insertHotelsImage(files, user, hotels.getHotelsCode());
			if (user.getMemberStatus().equals("H")) {
			} else {	
				model.addAttribute("");
			}			
		}	
		return "redirect:hotelsPic.do";
	}
	
}
