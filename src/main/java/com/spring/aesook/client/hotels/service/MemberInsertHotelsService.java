package com.spring.aesook.client.hotels.service;

import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberInsertHotelsService {

	public void insertHotelsFacility(MemberHotelsVO hotels, MemberHotelsFacilityVO facility, MemberVO user, int hotelsCode);
	
}
