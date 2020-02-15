package com.spring.aesook.client.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.client.member.service.MemberFindIdService;
import com.spring.aesook.client.member.service.MemberService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberController {
	
    @Autowired
    MemberService memberService;   
    @Autowired
    MemberFindIdService memberFindIdService;
    
    
    //  --------------------------- 회원가입 ------------------------------------
    @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
        return "/register";
    }


    @RequestMapping(value = "/register.do",  method = RequestMethod.POST)
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
    @RequestMapping(value = "/registerIdChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberVO vo){
    	int result = memberService.checkLoginId(vo);
    	return result;
    } 
    
    
    // --------------------------- 로그인 -------------------------------------
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
				model.addAttribute("login",user);
			} else {
				model.addAttribute("check", "noPass");
				return "/login";
			}
		}
	
    	return "/home"; // 지울 예정 ( login.do는 인터셉터가 처리 )
    }
    
    
    // --------------------------- HOME -------------------------------------
    @RequestMapping("/home.do")
    public String moveHome() {
    	return "/home";
    }
    
    
    // --------------------------- 아이디 찾기 -------------------------------------
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
    		model.addAttribute("check","FindId");
    	}
    	
    	return "/login";
    }
    
    // --------------------------- 비밀번호 찾기 -------------------------------------
    @RequestMapping(value="/findPass", method = RequestMethod.GET)
    public String moveFindPass() {
    	return "/findPass";
    }
    
    @RequestMapping(value="/findPass", method = RequestMethod.POST)
    public String findPass() {
    	return "";
    }
}
