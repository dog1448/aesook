package com.spring.aesook.client.member.service;

import java.util.List;

import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberFindIdService {
	
	List<MemberVO> findId(MemberVO vo);
}

