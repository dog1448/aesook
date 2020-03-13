package com.spring.aesook.client.hotels.service;

import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

public interface MemberHotelsFacilityService {
	MemberHotelsFacilityVO getFacility(int hotelsCode);
	void updateFacility(MemberHotelsFacilityVO vo);
}
