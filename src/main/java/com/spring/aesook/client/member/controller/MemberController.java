package com.spring.aesook.client.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.service.MemberFindIdService;
import com.spring.aesook.client.member.service.MemberFindPassService;
import com.spring.aesook.client.member.service.MemberRegisterService;
import com.spring.aesook.client.member.service.MemberService;
import com.spring.aesook.client.member.service.MemberWithdrawalService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
@SessionAttributes("vo")
public class MemberController {   

    @Autowired
    MemberRegisterService memberRegisterService;
    @Autowired
    private MemberService memberService;   
    @Autowired
    private MemberFindIdService memberFindIdService;
    @Autowired
    private MemberFindPassService memberFindPassService;
    @Autowired
	MemberHotelsListService memberHotelsListService;
    @Autowired
    MemberWithdrawalService memberWithdrawalService;

    @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
        return "/register";
    }


    @RequestMapping(value = "/register.do",  method = RequestMethod.POST)
    public String insertMember(MemberVO vo, Model model){  			
    	int result = memberService.checkLoginId(vo);
    	
    	
    		if(result == 1) {
        		return "/register";
        	} else if(result == 0) {
        		
        		 memberService.insertMember(vo);
        		 memberRegisterService.sendEmailConfirm(vo);
        		 model.addAttribute("vo", vo);
        	}       
		   	
        return "/registerWait";
    }
    
    @RequestMapping(value = "/registerConfirm.do", method = RequestMethod.GET)
    public String updateStatusMember(@ModelAttribute("vo") MemberVO vo, Model model) {    	
    	
    	memberService.updateStatusMember(vo);    	
    	
    	return "/registerSuccess";
    }
    
    @RequestMapping(value = "/registerIdChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberVO vo){
    	int result = memberService.checkLoginId(vo);
    	return result;
    } 
        


    //-------------------------------Login-------------------------


    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String moveLogin() {
    	return "/login";
    }
    
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)

    public String checkLogin(MemberVO vo, Model model,HttpSession session) {//session은 지울 예정

    	MemberVO user = memberService.getMember(vo);
    	String id = vo.getMemberId();
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

    	session.setAttribute("login", user);
		session.setAttribute("id" ,id);
    	return "redirect:home.do"; // 


    }
    
    
    @RequestMapping("/home.do")
    public String moveHome(Model model) {
    	List<MemberHotelsVO> list = memberHotelsListService.selectAccommodationTop10();
		model.addAttribute("top10", list);
    	return "/home";
    }
    
    

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
    

    //----------------------------------modifyInfo--------------------------------------------

    @RequestMapping(value = "/modifyInfo.do", method = RequestMethod.GET)
    public String moveModifyInfo(HttpSession session, Model model) {
    	MemberVO login = (MemberVO)session.getAttribute("login");
    	if(login != null) {
    		model.addAttribute("login",login);
    	}
    	return "/modify_info";
    }
    
    @RequestMapping(value = "/modifyInfo.do", method = RequestMethod.POST)
    public String modifyInfo(MemberVO vo, Model model) {
    	System.out.println(vo.getMemberPhone().toString());
    	memberService.updateInfoMember(vo);
    	System.out.println(vo.getMemberPhone().toString());
    	return "/home";
    }
    
    @RequestMapping(value = "/memberWithdrawal.do", method = RequestMethod.POST)
    public String withdrawMember(MemberVO vo, Model model,HttpSession session) {
    	MemberVO member = (MemberVO)session.getAttribute("user");
    	String sessionId = member.getMemberId();
    	System.out.println(sessionId);
    	memberWithdrawalService.updateWithdrawal(sessionId);
    	session.invalidate();
    	return "/home";
    }
    
    @RequestMapping(value = "/memberWithdrawal.do", method = RequestMethod.GET)
    public String moveWithdrawMember() {
    	return "/memberWithdrawal";
    }
    
    //------------------------logout--------------------------------------------
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "/login";
    }
}
