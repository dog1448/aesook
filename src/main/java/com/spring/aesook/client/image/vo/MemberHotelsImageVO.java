package com.spring.aesook.client.image.vo;

public class MemberHotelsImageVO {

	private int hotelsImageNo;
	private int hotelsCode;
	private String hotelsImageName;
	private String hotelsImageOrigin;
	private String hotelsImagePath;
	private String hotelsImageExtension;
	private String hotelsImageStatus;

	public int getHotelsImageNo() {
		return hotelsImageNo;
	}

	public void setHotelsImageNo(int hotelsImageNo) {
		this.hotelsImageNo = hotelsImageNo;
	}

	public int getHotelsCode() {
		return hotelsCode;
	}

	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
	}

	public String getHotelsImageName() {
		return hotelsImageName;
	}

	public void setHotelsImageName(String hotelsImageName) {
		this.hotelsImageName = hotelsImageName;
	}

	public String getHotelsImageOrigin() {
		return hotelsImageOrigin;
	}

	public void setHotelsImageOrigin(String hotelsImageOrigin) {
		this.hotelsImageOrigin = hotelsImageOrigin;
	}

	public String getHotelsImagePath() {
		return hotelsImagePath;
	}

	public void setHotelsImagePath(String hotelsImagePath) {
		this.hotelsImagePath = hotelsImagePath;
	}

	public String getHotelsImageExtension() {
		return hotelsImageExtension;
	}

	public void setHotelsImageExtension(String hotelsImageExtension) {
		this.hotelsImageExtension = hotelsImageExtension;
	}

	public String getHotelsImageStatus() {
		return hotelsImageStatus;
	}

	public void setHotelsImageStatus(String hotelsImageStatus) {
		this.hotelsImageStatus = hotelsImageStatus;
	}

	@Override
	public String toString() {
		return "MemberHotelsImageVO [hotelsImageNo=" + hotelsImageNo + ", hotelsCode=" + hotelsCode
				+ ", hotelsImageName=" + hotelsImageName + ", hotelsImageOrigin=" + hotelsImageOrigin
				+ ", hotelsImagePath=" + hotelsImagePath + ", hotelsImageExtension=" + hotelsImageExtension
				+ ", hotelsImageStatus=" + hotelsImageStatus + "]";
	}

}
