package com.spring.aesook.client.review.vo;

import java.sql.Date;

public class MemberReviewVO {
	
	private int reviewSeq;
	private int hotelsCode;
	private String memberId;
	private int bookingCode;
	private String reviewContents;
	private Date reviewDate;
	private int reviewScore;
	
	public int getReviewSeq() {
		return reviewSeq;
	}
	public void setReviewSeq(int reviewSeq) {
		this.reviewSeq = reviewSeq;
	}
	public int getHotelsCode() {
		return hotelsCode;
	}
	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getBookingCode() {
		return bookingCode;
	}
	public void setBookingCode(int bookingCode) {
		this.bookingCode = bookingCode;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}
	@Override
	public String toString() {
		return "MemberReviewVO [reviewSeq=" + reviewSeq + ", hotelsCode=" + hotelsCode + ", memberId=" + memberId
				+ ", bookingCode=" + bookingCode + ", reviewContents=" + reviewContents + ", reviewDate=" + reviewDate
				+ ", reviewScore=" + reviewScore + "]";
	}	
}
