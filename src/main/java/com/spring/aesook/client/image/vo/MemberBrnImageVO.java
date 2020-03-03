package com.spring.aesook.client.image.vo;

public class MemberBrnImageVO {

	private int brnImageNo;
	private String MemberId;
	private String brnImageName;
	private String brnImageOrigin;
	private String brnImagePath;
	private String brnImageExtension;
	private String brnImageStatus;

	public int getBrnImageNo() {
		return brnImageNo;
	}

	public void setBrnImageNo(int brnImageNo) {
		this.brnImageNo = brnImageNo;
	}

	public String getMemberId() {
		return MemberId;
	}

	public void setMemberId(String memberId) {
		MemberId = memberId;
	}

	public String getBrnImageName() {
		return brnImageName;
	}

	public void setBrnImageName(String brnImageName) {
		this.brnImageName = brnImageName;
	}

	public String getBrnImageOrigin() {
		return brnImageOrigin;
	}

	public void setBrnImageOrigin(String brnImageOrigin) {
		this.brnImageOrigin = brnImageOrigin;
	}

	public String getBrnImagePath() {
		return brnImagePath;
	}

	public void setBrnImagePath(String brnImagePath) {
		this.brnImagePath = brnImagePath;
	}

	public String getBrnImageExtension() {
		return brnImageExtension;
	}

	public void setBrnImageExtension(String brnImageExtension) {
		this.brnImageExtension = brnImageExtension;
	}

	public String getBrnImageStatus() {
		return brnImageStatus;
	}

	public void setBrnImageStatus(String brnImageStatus) {
		this.brnImageStatus = brnImageStatus;
	}

	@Override
	public String toString() {
		return "MemberBrnImageVO [brnImageNo=" + brnImageNo + ", MemberId=" + MemberId + ", brnImageName="
				+ brnImageName + ", brnImageOrigin=" + brnImageOrigin + ", brnImagePath=" + brnImagePath
				+ ", brnImageExtension=" + brnImageExtension + ", brnImageStatus=" + brnImageStatus + "]";
	}
	
	
	
}
