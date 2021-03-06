package com.spring.aesook.client.member.service;


import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberService {
    public void insertMember(MemberVO vo);
    public MemberVO getMember(MemberVO vo);
    public MemberVO checkLoginId(MemberVO vo);
    public void updateStatusMember(MemberVO vo);
    public void updateInfoMember(MemberVO vo);
}
