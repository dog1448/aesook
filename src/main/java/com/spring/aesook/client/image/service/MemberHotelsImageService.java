package com.spring.aesook.client.image.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsImageService {
	
	public void insertHotelsImage(MultipartHttpServletRequest files, MemberVO user, int hotelsCode);
	
}
