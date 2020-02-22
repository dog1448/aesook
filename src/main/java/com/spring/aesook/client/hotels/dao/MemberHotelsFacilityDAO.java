package com.spring.aesook.client.hotels.dao;

import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

public interface MemberHotelsFacilityDAO {
	MemberHotelsFacilityVO getFacility(MemberHotelsVO vo);
}
