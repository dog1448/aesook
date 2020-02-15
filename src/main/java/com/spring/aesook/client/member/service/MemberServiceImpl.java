package com.spring.aesook.client.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.member.dao.MemberDAO;
import com.spring.aesook.client.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberDAO memberDAO;


    @Override
    public void insertMember(MemberVO memberVO) {
        memberDAO.insertMember(memberVO);
    }

	@Override
	public int checkLoginId(MemberVO memberVO) {	
		int result = memberDAO.getId(memberVO);
		return result;
	}
}
