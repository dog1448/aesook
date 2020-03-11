package com.spring.aesook.client.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.mail.MailSender;
import com.spring.aesook.common.mail.MailVO;

@Service("memberRegisterService")
public class MemberRegisterServiceImpl implements MemberRegisterService {
		
	@Autowired
	private MailSender mailSender;

	@Override
	public void sendEmailConfirm(MemberVO vo) {		
		
		   MailVO mail = new MailVO("text/html");
		      mail.setMailTo(vo.getMemberEmail());
		      mail.setMailSubject(vo.getMemberName()+"님의 회원가입 인증 메일입니다.");
		      mail.setMailContent("<h1>[이메일 인증]</h1> \n"
		            + "<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>\n"
		            + "<a href='http://localhost:8080/aesook/registerConfirm.do'"
		            + " target='_blenk'>이메일 인증 확인</a>");
		      mailSender.sendMail(mail);
		      System.out.println("메일전송");
	}

}
