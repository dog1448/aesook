package com.spring.aesook.client.hotels.service;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

public interface MemberRoomService {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoomDescription(int hotelsCode, String sortType);
	void insertRoom(MemberRoomVO vo);
	int roomNameCheck(MemberRoomVO vo);
}
