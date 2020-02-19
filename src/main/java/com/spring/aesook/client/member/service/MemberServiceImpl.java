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
    public void insertMember(MemberVO vo) {
        memberDAO.insertMember(vo);
    }
    
    public MemberVO getMember(MemberVO vo) {
    	return memberDAO.getMember(vo);
    }
    
	@Override
	public int checkLoginId(MemberVO vo) {	
		int result = memberDAO.getId(vo);
		return result;
	}

	@Override
	public void updateStatusMember(MemberVO vo) {
		memberDAO.updateStatusMember(vo);
	}

	@Override
	public void updateInfoMember(MemberVO vo) {		
		memberDAO.updateInfoMember(vo);
		System.out.println(vo.getMemberPhone().toString());
	}
}
