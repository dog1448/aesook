package com.spring.aesook.client.hotels.vo;

import java.util.List;

public class MemberRoomVO {
	private int hotelsCode;
	private String roomName;
	private String roomSort;
	private int roomStandardCnt;
	private int roomMaxCnt;
	private int roomStandardPrice;
	private int roomHolidayPrice;
	private int roomAddPrice;
	private String roomInfo;
	private List<MemberRoomVO> roomList;

	public int getHotelsCode() {
		return hotelsCode;
	}

	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
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

	public int getRoomStandardCnt() {
		return roomStandardCnt;
	}

	public void setRoomStandardCnt(int roomStandardCnt) {
		this.roomStandardCnt = roomStandardCnt;
	}

	public int getRoomMaxCnt() {
		return roomMaxCnt;
	}

	public void setRoomMaxCnt(int roomMaxCnt) {
		this.roomMaxCnt = roomMaxCnt;
	}

	public int getRoomStandardPrice() {
		return roomStandardPrice;
	}

	public void setRoomStandardPrice(int roomStandardPrice) {
		this.roomStandardPrice = roomStandardPrice;
	}

	public int getRoomHolidayPrice() {
		return roomHolidayPrice;
	}

	public void setRoomHolidayPrice(int roomHolidayPrice) {
		this.roomHolidayPrice = roomHolidayPrice;
	}

	public int getRoomAddPrice() {
		return roomAddPrice;
	}

	public void setRoomAddPrice(int roomAddPrice) {
		this.roomAddPrice = roomAddPrice;
	}

	public String getRoomInfo() {
		return roomInfo;
	}

	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}

	public List<MemberRoomVO> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<MemberRoomVO> roomList) {
		this.roomList = roomList;
	}

	@Override
	public String toString() {
		return "MemberRoomVO [hotelsCode=" + hotelsCode + ", roomName=" + roomName + ", roomSort=" + roomSort
				+ ", roomStandardCnt=" + roomStandardCnt + ", roomMaxCnt=" + roomMaxCnt + ", roomStandardPrice="
				+ roomStandardPrice + ", roomHolidayPrice=" + roomHolidayPrice + ", roomAddPrice=" + roomAddPrice
				+ ", roomInfo=" + roomInfo + ", roomList=" + roomList + "]";
	}

}
