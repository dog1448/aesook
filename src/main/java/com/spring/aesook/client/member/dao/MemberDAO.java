package com.spring.aesook.client.member.dao;

import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO memberVO);
	public int getId(MemberVO memberVO);
}
