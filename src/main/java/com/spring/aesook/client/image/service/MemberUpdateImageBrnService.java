package com.spring.aesook.client.image.service;

import org.springframework.web.multipart.MultipartFile;

import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberUpdateImageBrnService  {

	public void updateImageBrn(MultipartFile file, MemberVO user);
	public MemberBrnImageVO getBrnImage(MemberVO vo);
}
