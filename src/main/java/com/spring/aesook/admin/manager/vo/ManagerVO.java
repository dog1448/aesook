package com.spring.aesook.admin.manager.vo;

import org.springframework.stereotype.Component;

@Component
public class ManagerVO {

	private String admin_Id;
	private String admin_Pass;
	private String admin_Name;
	private String admin_Email;
	private String admin_Grade;

	public String getAdmin_Id() {
		return admin_Id;
	}

	public void setAdmin_Id(String admin_Id) {
		this.admin_Id = admin_Id;
	}

	public String getAdmin_Pass() {
		return admin_Pass;
	}

	public void setAdmin_Pass(String admin_Pass) {
		this.admin_Pass = admin_Pass;
	}

	public String getAdmin_Name() {
		return admin_Name;
	}

	public void setAdmin_Name(String admin_Name) {
		this.admin_Name = admin_Name;
	}

	public String getAdmin_Email() {
		return admin_Email;
	}

	public void setAdmin_Email(String admin_Email) {
		this.admin_Email = admin_Email;
	}

	public String getAdmin_Grade() {
		return admin_Grade;
	}

	public void setAdmin_Grade(String admin_Grade) {
		this.admin_Grade = admin_Grade;
	}

}
