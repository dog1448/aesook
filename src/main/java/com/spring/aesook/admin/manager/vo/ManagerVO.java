package com.spring.aesook.admin.manager.vo;

import org.springframework.stereotype.Component;

@Component
public class ManagerVO {

	private String adminId;
	private String adminPass;
	private String adminName;
	private String adminEmail;
	private String adminGrade;

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPass() {
		return adminPass;
	}

	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminGrade() {
		return adminGrade;
	}

	public void setAdminGrade(String adminGrade) {
		this.adminGrade = adminGrade;
	}

}
