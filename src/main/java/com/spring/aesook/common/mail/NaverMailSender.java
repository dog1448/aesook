package com.spring.aesook.common.mail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NaverMailSender implements MailSender {

	private final int port = 465;
	private final String host = "smtp.naver.com";
	private final String user = ************;
	private final String pass = ************;
	private final String tail = "@naver.com";
	private Properties props = System.getProperties();
	
	private void setConfig() {
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
	}
	
	private MimeMessage sendingHead() {
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			String un = user;
			String pw = pass;
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
			
		});
		session.setDebug(true);
		MimeMessage msg = new MimeMessage(session);
		return msg;
	}
	
	
	
	public void sendMail(MailVO mail) {
		setConfig();
		MimeMessage msg = sendingHead();
		try {
			msg.setFrom(new InternetAddress(user+tail));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail.getMailTo()));
			msg.setSubject(mail.getMailSubject(), "UTF-8");
			msg.setContent((String)mail.getMailContent(), mail.getContentType()+"; charset=UTF-8;");
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		try {
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
}
