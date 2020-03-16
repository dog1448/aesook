package com.spring.aesook.admin.terms.vo;

public class ManagerTermsVO {
	private int termsNo;
	private String termsUsage;
	private String termsTitle;
	private String termsContent;
	public int getTermsNo() {
		return termsNo;
	}
	public void setTermsNo(int termsNo) {
		this.termsNo = termsNo;
	}
	public String getTermsUsage() {
		return termsUsage;
	}
	public void setTermsUsage(String termsUsage) {
		this.termsUsage = termsUsage;
	}
	public String getTermsTitle() {
		return termsTitle;
	}
	public void setTermsTitle(String termsTitle) {
		this.termsTitle = termsTitle;
	}
	public String getTermsContent() {
		return termsContent;
	}
	public void setTermsContent(String termsContent) {
		this.termsContent = termsContent;
	}
	@Override
	public String toString() {
		return "ManagerTermsVO [termsNo=" + termsNo + ", termsUsage=" + termsUsage + ", termsTitle=" + termsTitle
				+ ", termsContent=" + termsContent + "]";
	}
}
