package com.spring.aesook.admin.manager.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.manager.dao.ManagerDAO;
import com.spring.aesook.admin.manager.vo.ManagerVO;
import com.spring.aesook.common.mail.MailSender;
import com.spring.aesook.common.mail.MailVO;

@Service("managerLoginService")
public class ManagerLoginServiceImpl implements ManagerLoginService {
	
	@Autowired
	private ManagerDAO managerDAO;
	@Autowired
	private MailSender mailSender;

	@Override
	public void sendEmailPass(ManagerVO vo) {
		
		String uuid = UUID.randomUUID().toString().replace("-", "");
		vo.setAdminPass(uuid);
		MailVO mail = new MailVO("text/html");
		mail.setMailTo(vo.getAdminEmail());
		mail.setMailSubject(vo.getAdminId()+"님의 초기 비밀번호입니다.");
		mail.setMailContent("비밀번호 : " + uuid + " 입니다.");
		mailSender.sendMail(mail);
		
		managerDAO.updatePassManager(vo);
	}
	
	
}
