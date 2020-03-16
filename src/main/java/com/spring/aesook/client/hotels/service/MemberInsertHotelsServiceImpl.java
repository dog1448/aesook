package com.spring.aesook.client.hotels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.aesook.client.hotels.dao.MemberHotelsDAO;
import com.spring.aesook.client.hotels.dao.MemberHotelsFacilityDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Service("memberInsertHotelsService")
public class MemberInsertHotelsServiceImpl implements MemberInsertHotelsService {

	@Autowired
	private MemberHotelsFacilityDAO memberHotelsFacilityDAO;
	@Autowired
	private MemberHotelsDAO memberHotelsDAO;
	
	@Transactional(rollbackFor = Exception.class)
	public void insertHotelsFacility(MemberHotelsVO hotels, MemberHotelsFacilityVO facility, MemberVO user, int hotelsCode) {
		
		// hotels Insert Service
		hotels.setMemberId(user.getMemberId());
		hotels.setHotelsCode(hotelsCode);
		memberHotelsDAO.insertHotels(hotels);
		
		// hotels Facility Insert Service
		facility.setHotelsCode(hotelsCode);
		memberHotelsFacilityDAO.insertFacility(facility);
	}

}


