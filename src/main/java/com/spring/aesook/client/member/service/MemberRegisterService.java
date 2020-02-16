package com.spring.aesook.client.member.service;

import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberRegisterService {
	void sendEmailConfirm(MemberVO vo);
}
