package com.spring.aesook.admin.image.vo;

public class ManagerAdminImageVO {

	private int adminImageNo;
	private String adminImageName;
	private String adminImageOrigin;
	private String adminImagePath;
	private String adminImageExtension;
	private String adminImageStatus;

	public int getAdminImageNo() {
		return adminImageNo;
	}

	public void setAdminImageNo(int adminImageNo) {
		this.adminImageNo = adminImageNo;
	}

	public String getAdminImageName() {
		return adminImageName;
	}

	public void setAdminImageName(String adminImageName) {
		this.adminImageName = adminImageName;
	}

	public String getAdminImageOrigin() {
		return adminImageOrigin;
	}

	public void setAdminImageOrigin(String adminImageOrigin) {
		this.adminImageOrigin = adminImageOrigin;
	}

	public String getAdminImagePath() {
		return adminImagePath;
	}

	public void setAdminImagePath(String adminImagePath) {
		this.adminImagePath = adminImagePath;
	}

	public String getAdminImageExtension() {
		return adminImageExtension;
	}

	public void setAdminImageExtension(String adminImageExtension) {
		this.adminImageExtension = adminImageExtension;
	}

	public String getAdminImageStatus() {
		return adminImageStatus;
	}

	public void setAdminImageStatus(String adminImageStatus) {
		this.adminImageStatus = adminImageStatus;
	}

	@Override
	public String toString() {
		return "ManagerAdminImageVO [adminImageNo=" + adminImageNo + ", adminImageName=" + adminImageName
				+ ", adminImageOrigin=" + adminImageOrigin + ", adminImagePath=" + adminImagePath
				+ ", adminImageExtension=" + adminImageExtension + ", adminImageStatus=" + adminImageStatus + "]";
	}

}
