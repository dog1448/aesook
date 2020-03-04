package com.spring.aesook.client.image.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.client.image.service.MemberHotelsImageService;
import com.spring.aesook.client.image.service.MemberUpdateImageBrnService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberImageController {
	
	@Autowired
	private MemberUpdateImageBrnService memberUpdateImageBrnService; 
	@Autowired
	private MemberHotelsImageService memberHotelsImageService;
	
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
    public String moveHotelsImage() {
    	
    	return "/hotelsPic";
    }
    
    
    
    
    
    
    
    
    
    
    
 // ------------------------------ 호텔이미지 등록 -------------------------------------
	@RequestMapping(value="/insertPic.do" , method = RequestMethod.GET)
	public String moveInsertPic() {
		return "/insertPic";
	}
	
	@RequestMapping(value="/insertPic.do" , method = RequestMethod.POST)
	public String insertPic(MultipartHttpServletRequest files, HttpSession session, Model model) {
		MemberVO user = (MemberVO) session.getAttribute("login");
		if (user != null) {
			memberHotelsImageService.insertHotelsImage(files, user, 1004);
			if (user.getMemberStatus().equals("H")) {
			} else {	
				model.addAttribute("");
			}			
		}
		
		return "redirect:hotelsPic.do";
	}
	
}
