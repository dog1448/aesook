package com.spring.aesook.client.hotels.dao;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

public interface MemberRoomDAO {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoom(MemberRoomVO vo);
	void insertRoom(MemberRoomVO vo);
	int roomNameCheck(MemberRoomVO vo);
}
