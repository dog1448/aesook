package com.spring.aesook.client.hotels.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberHotelsVO {
	private int hotelsCode;
	private String hotelsName;
	private String hotelsType;
	private String memberId;
	private String hotelsPhone;
	private String hotelsZipcode;
	private String hotelsAddress1;
	private String hotelsAddress2;
	private String hotelsPath;
	private String hotelsInfo;
	private String hotelsIntroduce;	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getHotelsCode() {
		return hotelsCode;
	}
	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
	}
	public String getHotelsName() {
		return hotelsName;
	}
	public void setHotelsName(String hotelsName) {
		this.hotelsName = hotelsName;
	}
	public String getHotelsType() {
		return hotelsType;
	}
	public void setHotelsType(String hotelsType) {
		this.hotelsType = hotelsType;
	}		
	public String getHotelsPhone() {
		return hotelsPhone;
	}
	public void setHotelsPhone(String hotelsPhone) {
		this.hotelsPhone = hotelsPhone;
	}
	public String getHotelsZipcode() {
		return hotelsZipcode;
	}
	public void setHotelsZipcode(String hotelsZipcode) {
		this.hotelsZipcode = hotelsZipcode;
	}
	public String getHotelsAddress1() {
		return hotelsAddress1;
	}
	public void setHotelsAddress1(String hotelsAddress1) {
		this.hotelsAddress1 = hotelsAddress1;
	}
	public String getHotelsAddress2() {
		return hotelsAddress2;
	}
	public void setHotelsAddress2(String hotelsAddress2) {
		this.hotelsAddress2 = hotelsAddress2;
	}
	public String getHotelsPath() {
		return hotelsPath;
	}
	public void setHotelsPath(String hotelsPath) {
		this.hotelsPath = hotelsPath;
	}
	public String getHotelsInfo() {
		return hotelsInfo;
	}
	public void setHotelsInfo(String hotelsInfo) {
		this.hotelsInfo = hotelsInfo;
	}
	public String getHotelsIntroduce() {
		return hotelsIntroduce;
	}
	public void setHotelsIntroduce(String hotelsIntroduce) {
		this.hotelsIntroduce = hotelsIntroduce;
	}

	@Override
	public String toString() {
		return "MemberHotelsVO [hotelsCode=" + hotelsCode + ", hotelsName=" + hotelsName + ", hotelsType=" + hotelsType
				+ ", memberNo=" + memberId + ", hotelsPhone=" + hotelsPhone + ", hotelsZipcode=" + hotelsZipcode
				+ ", hotelsAddress1=" + hotelsAddress1 + ", hotelsAddress2=" + hotelsAddress2 + ", hotelsPath="
				+ hotelsPath + ", hotelsInfo=" + hotelsInfo + ", hotelsIntroduce=" + hotelsIntroduce + "]";
	}
	

	
}
