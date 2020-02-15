package com.spring.aesook.client.member.service;


import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberService {
    public void insertMember(MemberVO memberVO);
    public MemberVO getMember(MemberVO memberVO);
    public int checkLoginId(MemberVO memberVO);

}
