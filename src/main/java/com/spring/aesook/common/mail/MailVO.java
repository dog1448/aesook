package com.spring.aesook.common.mail;

import java.util.Date;

public class MailVO {

	private String mailTo;

	private String mailSubject;

	private Object mailContent;

	private String contentType;
	
	public MailVO() {
		contentType = "text/plain";
	}
	
	public MailVO(String contentType) {
		this.contentType = contentType;
	}


	public String getMailTo() {
		return mailTo;
	}

	public void setMailTo(String mailTo) {
		this.mailTo = mailTo;
	}

	public String getMailSubject() {
		return mailSubject;
	}

	public void setMailSubject(String mailSubject) {
		this.mailSubject = mailSubject;
	}

	public Object getMailContent() {
		return mailContent;
	}

	public void setMailContent(Object mailContent) {
		this.mailContent = mailContent;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Date getMailSendDate() {
		return new Date();
	}
}
