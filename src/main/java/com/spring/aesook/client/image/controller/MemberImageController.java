package com.spring.aesook.client.image.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.spring.aesook.client.image.service.MemberUpdateImageBrnService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberImageController {
	
	@Autowired
	private MemberUpdateImageBrnService memberUpdateImageBrnService; 
	
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
    		return "/reservationCheck";
    	}
    	model.addAttribute("check","noBrn");
    	return "/brn";
    }

}
