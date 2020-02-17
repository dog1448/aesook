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
		mail.setMailSubject(vo.getMemberName()+"���� ȸ������ ���� �����Դϴ�.");
		mail.setMailContent("<h1>[�̸��� ����]</h1> \n"
				+ "<p>�Ʒ� ��ũ�� Ŭ���Ͻø� �̸��� ������ �Ϸ�˴ϴ�.</p>\n"
				+ "<a href='http://localhost:8080/aesook/registerConfirm.do'"
				+ " target='_blenk'>�̸��� ���� Ȯ��</a>");
		mailSender.sendMail(mail);
		System.out.println("��������");
	}

}
