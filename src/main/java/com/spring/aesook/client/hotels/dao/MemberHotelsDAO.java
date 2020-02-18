package com.spring.aesook.client.hotels.dao;

import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

public interface MemberHotelsDAO {
	int getHotelsCode();
	void insertHotels(MemberHotelsVO vo);
	void insertRoomSort(MemberRoomSortVO vo);
	void insertRoom(MemberRoomVO vo);
	void inserHotelsFacility(MemberHotelsFacilityVO vo);
}
