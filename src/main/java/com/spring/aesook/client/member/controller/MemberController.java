package com.spring.aesook.client.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.spring.aesook.client.member.service.MemberFindIdService;
import com.spring.aesook.client.member.service.MemberFindPassService;
import com.spring.aesook.client.member.service.MemberRegisterService;
import com.spring.aesook.client.member.service.MemberService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberController {
	
    

    @Autowired
    MemberRegisterService memberRegisterService;
   @Autowired
    MemberService memberService;   
    @Autowired
    MemberFindIdService memberFindIdService;
    @Autowired
    MemberFindPassService memberFindPassService;
    

    
    
    @RequestMapping(value = "/registerMove.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
        return "/register";
    }


    @RequestMapping(value = "/register.do",  method = RequestMethod.POST)
    public String insertMember(MemberVO vo){  			
    	int result = memberService.checkLoginId(vo);
    	
    	
    		if(result == 1) {
        		return "/register";
        	} else if(result == 0) {
        		
        		 memberService.insertMember(vo);
        		 memberRegisterService.sendEmailConfirm(vo);
        	}       
		   	
        return "/registerWait";
    }
    
    @RequestMapping(value = "/registerConfirm.do", method = RequestMethod.GET)
    public String updateStatusMember(@RequestParam("confirm") String confirm, MemberVO vo, Model model) {
    	if(confirm.equals("y")) {
    		vo.setMemberStatus("G");
    		memberService.updateStatusMember(vo);
    	}
    	return "/login";
    }
    
        
    @RequestMapping(value = "/registerIdChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberVO vo){
    	int result = memberService.checkLoginId(vo);
    	return result;
    } 
    
    
    // --------------------------- -------------------------------------
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String moveLogin() {
    	return "/login";
    }
    
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String checkLogin(MemberVO vo, Model model) {
    	MemberVO user = memberService.getMember(vo);
    	
    	if(user == null) {
			model.addAttribute("check", "noId");
			return "/login";
		} else {
			if (user.getMemberPass().equals(vo.getMemberPass())) {
				if(user.getMemberStatus().equals("R")) {
					return "/registerWait";
				}
				model.addAttribute("login",user);
			} else {
				model.addAttribute("check", "noPass");
				return "/login";
			}
		}
	
    	return "/home"; // 
    }
    
    
    // --------------------------- HOME -------------------------------------
    @RequestMapping("/home.do")
    public String moveHome() {
    	return "/home";
    }
    
    
    // --------------------------- -------------------------------------
    @RequestMapping(value="/findId", method = RequestMethod.GET)
    public String moveFindId() {
    	return "/findId";
    }
    
    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(MemberVO vo, Model model) {
    	MemberVO user = memberFindIdService.findId(vo);
    	if(user == null) {
    		model.addAttribute("check","noId");
    	} else {
    		model.addAttribute("check","findId");
    	}
    	
    	return "/login";
    }
    
    // ---------------------------  -------------------------------------
    @RequestMapping(value="/findPass", method = RequestMethod.GET)
    public String moveFindPass() {
    	return "/findPass";
    }
    
    @RequestMapping(value="/findPass", method = RequestMethod.POST)
    public String findPass(MemberVO vo, Model model) {
    	MemberVO user = memberService.getMember(vo);
    	if(user == null) {
    		model.addAttribute("check","noId");
    	} else {
    		if(vo.getMemberEmail().equals(user.getMemberEmail()) && vo.getMemberName().equals(user.getMemberName())) {
    			model.addAttribute("check","findPass");
    			memberFindPassService.findPass(user);
    		} else {
    			model.addAttribute("check","noNameEmail");
    		}
    		
    	}
    	
    	return "/login";
    }
    
    @RequestMapping(value = "/insertRoom.do", method = RequestMethod.GET)
    public String moveInsertRoom() {
    	return "/insertRoom";
    }
    
}
