package com.spring.aesook.client.image.vo;

public class MemberHotelsImageVO {

	private int HotelsImageNo;
	private int HotelsCode;
	private String HotelsImageName;
	private String HotelsImageOrigin;
	private String HotelsImagePath;
	private String HotelsImageExtension;
	private String HotelsImageStatus;

	public int getHotelsImageNo() {
		return HotelsImageNo;
	}

	public void setHotelsImageNo(int hotelsImageNo) {
		HotelsImageNo = hotelsImageNo;
	}

	public int getHotelsCode() {
		return HotelsCode;
	}

	public void setHotelsCode(int hotelsCode) {
		HotelsCode = hotelsCode;
	}

	public String getHotelsImageName() {
		return HotelsImageName;
	}

	public void setHotelsImageName(String hotelsImageName) {
		HotelsImageName = hotelsImageName;
	}

	public String getHotelsImageOrigin() {
		return HotelsImageOrigin;
	}

	public void setHotelsImageOrigin(String hotelsImageOrigin) {
		HotelsImageOrigin = hotelsImageOrigin;
	}

	public String getHotelsImagePath() {
		return HotelsImagePath;
	}

	public void setHotelsImagePath(String hotelsImagePath) {
		HotelsImagePath = hotelsImagePath;
	}

	public String getHotelsImageExtension() {
		return HotelsImageExtension;
	}

	public void setHotelsImageExtension(String hotelsImageExtension) {
		HotelsImageExtension = hotelsImageExtension;
	}

	public String getHotelsImageStatus() {
		return HotelsImageStatus;
	}

	public void setHotelsImageStatus(String hotelsImageStatus) {
		HotelsImageStatus = hotelsImageStatus;
	}

	@Override
	public String toString() {
		return "MemberHotelsImageVO [HotelsImageNo=" + HotelsImageNo + ", HotelsCode=" + HotelsCode
				+ ", HotelsImageName=" + HotelsImageName + ", HotelsImageOrigin=" + HotelsImageOrigin
				+ ", HotelsImagePath=" + HotelsImagePath + ", HotelsImageExtension=" + HotelsImageExtension
				+ ", HotelsImageStatus=" + HotelsImageStatus + "]";
	}

}
