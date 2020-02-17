package com.spring.aesook.client.member.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.member.dao.MemberDAO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.mail.MailSender;
import com.spring.aesook.common.mail.MailVO;

@Service("memberFindPassService")
public class MemberFindPassServiceImpl implements MemberFindPassService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MailSender mailSender;
	
	public void findPass(MemberVO vo) {
		
		String uuid = UUID.randomUUID().toString().replace("-", "");
		vo.setMemberPass(uuid);
		MailVO mail = new MailVO();
		mail.setMailTo(vo.getMemberEmail());
		mail.setMailSubject(vo.getMemberName()+"���� ��й�ȣ ã�� �����Դϴ�.");
		mail.setMailContent("�ӽú�й�ȣ�� " + uuid + "�Դϴ�.");
		mailSender.sendMail(mail);
		
		memberDAO.updatePassMember(vo);
	}
	
}
