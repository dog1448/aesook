package com.spring.aesook.client.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.member.dao.MemberDAO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.mail.MailSender;
import com.spring.aesook.common.mail.MailVO;

@Service("memberFindIdService")
public class MemberFindIdServiceImpl implements MemberFindIdService {

	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MailSender mailSender;
	
	public MemberVO findId(MemberVO vo) {
		
		MemberVO user = memberDAO.getFindIdMember(vo);
		
		if(user != null) {
			MailVO mail = new MailVO();
			mail.setMailTo(user.getMemberEmail());
			mail.setMailSubject(user.getMemberName()+"님의 ID찾기 입니다.");
			mail.setMailContent("ID : "+createComplexId(user.getMemberId()));
			mailSender.sendMail(mail);
		}
		
		return user;
	}
	
	
	// ----------Id 암호화 -----------
	private String createComplexId(String id) {
		
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < id.length(); i++) {
			if(i < 3 || i > id.length()-3) {
				sb.append(id.charAt(i));
				continue;
			}
			sb.append("*");
		}
		return sb.toString();
	}
	
	
	
}
