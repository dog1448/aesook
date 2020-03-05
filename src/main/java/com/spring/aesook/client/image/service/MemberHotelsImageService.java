package com.spring.aesook.client.image.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsImageService {
	
	public void insertHotelsImage(MultipartHttpServletRequest files, MemberVO user, int hotelsCode);
	public List<MemberHotelsImageVO> getHotelsImageList(MemberVO user);
}
