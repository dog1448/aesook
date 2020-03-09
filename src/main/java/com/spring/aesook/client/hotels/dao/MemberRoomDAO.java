package com.spring.aesook.client.hotels.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

public interface MemberRoomDAO {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoom(MemberRoomVO vo);
	void insertRoom(HashMap<Object, Object> map);
}
