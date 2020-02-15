package com.spring.aesook.client.member.dao;

import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public MemberVO getFindIdMember(MemberVO vo);
	public int getId(MemberVO vo);
}
