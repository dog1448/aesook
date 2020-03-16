package com.spring.aesook.client.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.member.dao.MemberDAO;
import com.spring.aesook.client.member.vo.MemberVO;
@Service("memberWithdrawalService")
public class MemberWithdrawalServiceImpl implements MemberWithdrawalService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void updateWithdrawal(String memberId) {
		memberDAO.updateWithdrawal(memberId);
	}

}
