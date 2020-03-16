package com.spring.aesook.client.hotels.dao;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsDAO {
	void insertHotels(MemberHotelsVO vo);
	List<MemberHotelsVO> getMyHotels(MemberVO vo);
	int getHotelsCode();
	void updateHotels(MemberHotelsVO memberHotelsVO);
	void modifyRooms(MemberRoomVO memberRoomVO);
	String getHostId(MemberHotelsVO vo);
}
