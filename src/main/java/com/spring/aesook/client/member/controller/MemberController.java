package com.spring.aesook.client.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.client.member.service.MemberService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;    
   
    @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
        return "/register";
    }


    @RequestMapping(value = "/inserthome.do",  method = RequestMethod.POST)
    public String insertMember(MemberVO vo){  			
    	int result = memberService.checkLoginId(vo);
    	
    	try {
    		if(result == 1) {
        		return "/register";
        	} else if(result == 0) {
        		 memberService.insertMember(vo);
        	}       
		} catch (Exception e) {
			throw new RuntimeException();
		}    	
        return "/login";
    }
    
    //아이디 중복체크    
    @RequestMapping(value = "/idChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberVO vo){
    	int result = memberService.checkLoginId(vo);
    	return result;
    } 
    
    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String moveLogin() {
    	return "/login";
    }
  

}
