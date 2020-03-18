package com.spring.aesook.client.member.service;

import java.util.List;

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
	
	public List<MemberVO> findId(MemberVO vo) {
		List<MemberVO> user = memberDAO.getFindIdMember(vo);
		
		if(user != null) {
			StringBuffer str = new StringBuffer();
			MailVO mail = new MailVO("text/html");
			mail.setMailTo(user.get(0).getMemberEmail());
			mail.setMailSubject(user.get(0).getMemberName()+"님의 ID찾기 입니다.");
			for (int i = 0; i < user.size(); i++) {
				str.append("ID : " + createComplexId(user.get(i).getMemberId()));
				str.append("\n");
			}
			mail.setMailContent(str);
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
