package com.spring.aesook.admin.datalist.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ManagerBookingVO {
	private String bookingCode;
	private int hotelsCode;
	private String hotelsName;
	private String roomName;
	private String roomSort;
	private String memberId;
	private String bookingCheckIn;
	private String bookingCheckOut;
	private String bookingName;
	private String bookingPhone;
	private int bookingCnt;
	private Date bookingDate;
	private Date bookingCancelDate;
	private int bookingTotalPrice;
	private String bookingStatus;
	public String getBookingCode() {
		return bookingCode;
	}
	public void setBookingCode(String bookingCode) {
		this.bookingCode = bookingCode;
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
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomSort() {
		return roomSort;
	}
	public void setRoomSort(String roomSort) {
		this.roomSort = roomSort;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBookingCheckIn() {
		return bookingCheckIn;
	}
	public void setBookingCheckIn(String bookingCheckIn) {
		this.bookingCheckIn = bookingCheckIn;
	}
	public String getBookingCheckOut() {
		return bookingCheckOut;
	}
	public void setBookingCheckOut(String bookingCheckOut) {
		this.bookingCheckOut = bookingCheckOut;
	}
	public String getBookingName() {
		return bookingName;
	}
	public void setBookingName(String bookingName) {
		this.bookingName = bookingName;
	}
	public String getBookingPhone() {
		return bookingPhone;
	}
	public void setBookingPhone(String bookingPhone) {
		this.bookingPhone = bookingPhone;
	}
	public int getBookingCnt() {
		return bookingCnt;
	}
	public void setBookingCnt(int bookingCnt) {
		this.bookingCnt = bookingCnt;
	}
	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	public Date getBookingCancelDate() {
		return bookingCancelDate;
	}
	public void setBookingCancelDate(Date bookingCancelDate) {
		this.bookingCancelDate = bookingCancelDate;
	}
	public int getBookingTotalPrice() {
		return bookingTotalPrice;
	}
	public void setBookingTotalPrice(int bookingTotalPrice) {
		this.bookingTotalPrice = bookingTotalPrice;
	}
	public String getBookingStatus() {
		return bookingStatus;
	}
	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}
	
	@Override
	public String toString() {
		return "MemberBookingVO [bookingCode=" + bookingCode + ", hotelsCode=" + hotelsCode + ", hotelsName="
				+ hotelsName + ", roomName=" + roomName + ", roomSort=" + roomSort + ", memberId=" + memberId
				+ ", bookingCheckIn=" + bookingCheckIn + ", bookingCheckOut=" + bookingCheckOut + ", bookingName="
				+ bookingName + ", bookingPhone=" + bookingPhone + ", bookingCnt=" + bookingCnt + ", bookingDate="
				+ bookingDate + ", bookingCancelDate=" + bookingCancelDate + ", bookingTotalPrice=" + bookingTotalPrice
				+ ", bookingStatus=" + bookingStatus + "]";
	}
	
}
