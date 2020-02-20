package com.spring.aesook.client.hotels.dao;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsDAO {
	void insertHotels(MemberHotelsVO vo);
	MemberHotelsVO getMyHotels(MemberVO vo);
}
