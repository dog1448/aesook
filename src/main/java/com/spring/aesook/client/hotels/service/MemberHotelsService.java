package com.spring.aesook.client.hotels.service;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

public interface MemberHotelsService {
	int getHotelsCode();
	void insertHotels(MemberHotelsVO vo);
	void insertSortType(MemberRoomSortVO vo);
}
