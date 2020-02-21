package com.spring.aesook.client.hotels.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberRoomSortVO {
	private int hotelsCode;
	private String sortType;
	private int sortStandardCnt;
	private int sortMaxCnt;
	private int sortRoomCnt;
	private int sortStandardPrice;
	private int sortHolidayPrice;
	private int sortAddPrice;
	private String sortRoomInfo;
	
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
	public int getSortStandardCnt() {
		return sortStandardCnt;
	}
	public void setSortStandardCnt(int sortStandardCnt) {
		this.sortStandardCnt = sortStandardCnt;
	}
	public int getSortMaxCnt() {
		return sortMaxCnt;
	}
	public void setSortMaxCnt(int sortMaxCnt) {
		this.sortMaxCnt = sortMaxCnt;
	}
	public int getSortRoomCnt() {
		return sortRoomCnt;
	}
	public void setSortRoomCnt(int sortRoomCnt) {
		this.sortRoomCnt = sortRoomCnt;
	}
	public int getSortStandardPrice() {
		return sortStandardPrice;
	}
	public void setSortStandardPrice(int sortStandardPrice) {
		this.sortStandardPrice = sortStandardPrice;
	}
	public int getSortHolidayPrice() {
		return sortHolidayPrice;
	}
	public void setSortHolidayPrice(int sortHolidayPrice) {
		this.sortHolidayPrice = sortHolidayPrice;
	}
	public int getSortAddPrice() {
		return sortAddPrice;
	}
	public void setSortAddPrice(int sortAddPrice) {
		this.sortAddPrice = sortAddPrice;
	}
	public String getSortRoomInfo() {
		return sortRoomInfo;
	}
	public void setSortRoomInfo(String sortRoomInfo) {
		this.sortRoomInfo = sortRoomInfo;
	}
	
	
}
