package com.spring.aesook.admin.terms.vo;

import org.springframework.stereotype.Component;

@Component
public class ManagerTermsVO {
	private String bookingRule;
	private String cancelRule;
	@Override
	public String toString() {
		return "ManagerTermsVO [bookingRule=" + bookingRule + ", cancelRule=" + cancelRule + ", hotelsType="
				+ hotelsType + "]";
	}
	public String getCancelRule() {
		return cancelRule;
	}
	public void setCancelRule(String cancelRule) {
		this.cancelRule = cancelRule;
	}
	private String hotelsType;
	
	public String getBookingRule() {
		return bookingRule;
	}
	public void setBookingRule(String bookingRule) {
		this.bookingRule = bookingRule;
	}
	
	public String getHotelsType() {
		return hotelsType;
	}
	public void setHotelsType(String hotelsType) {
		this.hotelsType = hotelsType;
	}
}