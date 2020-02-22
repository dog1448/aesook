package com.spring.aesook.client.hotels.service;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

public interface MemberRoomSortService {
	List<MemberRoomSortVO> getRoomSortList(int hotelsCode);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomSortVO getRoomDescription(int hotelsCode, String sortType);
}
