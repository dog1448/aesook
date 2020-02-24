package com.spring.aesook.client.hotels.service;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsService {
	
	void insertHotels(MemberHotelsVO vo);
	
	MemberHotelsVO getMyHotels(MemberVO vo);
	
}
