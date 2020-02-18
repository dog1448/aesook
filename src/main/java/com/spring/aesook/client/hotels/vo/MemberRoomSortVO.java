package com.spring.aesook.client.hotels.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberRoomSortVO {
	private int hotelsCode;
	private String sortType;
	private int standardCnt;
	private int maxCnt;
	private int roomCnt;
	private int standardPrice;
	private int holidayPrice;
	private int addPrice;
	private String roomInfo;
	
	public int getHotelsCode() {
		return hotelsCode;
	}
	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
	}
	public String getSortType() {
		return sortType;
	}
	public void setSortType(String sortType) {
		this.sortType = sortType;
	}
	public int getStandardCnt() {
		return standardCnt;
	}
	public void setStandardCnt(int standardCnt) {
		this.standardCnt = standardCnt;
	}
	public int getMaxCnt() {
		return maxCnt;
	}
	public void setMaxCnt(int maxCnt) {
		this.maxCnt = maxCnt;
	}
	public int getRoomCnt() {
		return roomCnt;
	}
	public void setRoomCnt(int roomCnt) {
		this.roomCnt = roomCnt;
	}
	public int getStandardPrice() {
		return standardPrice;
	}
	public void setStandardPrice(int standardPrice) {
		this.standardPrice = standardPrice;
	}
	public int getHolidayPrice() {
		return holidayPrice;
	}
	public void setHolidayPrice(int holidayPrice) {
		this.holidayPrice = holidayPrice;
	}
	public int getAddPrice() {
		return addPrice;
	}
	public void setAddPrice(int addPrice) {
		this.addPrice = addPrice;
	}
	public String getRoomInfo() {
		return roomInfo;
	}
	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}
	
}
