package com.spring.aesook.client.memberimage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MemberImageController {
	
    // --------------------------- 사업자 등록 -------------------------------------
    @RequestMapping(value = "/brn.do", method = RequestMethod.GET)
    public String moveBrn() {
    	return "/brn";
    }
    
    @RequestMapping(value = "/brn.do", method = RequestMethod.POST)
    public String insertBrn(MultipartFile file, HttpSession httpSession) {
    	
    	return "/brn";
    }

}
