package com.spring.aesook.client.hotels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberHotelsFacilityDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

@Service("memberHotelsFacilityService")
public class MemberHotelsFacilityServiceImpl implements MemberHotelsFacilityService {

	@Autowired
	private MemberHotelsFacilityDAO memberHotelsFacilityDAO;
	
	@Override
	public MemberHotelsFacilityVO getFacility(int hotelsCode) {
		MemberHotelsVO vo = new MemberHotelsVO();
		vo.setHotelsCode(hotelsCode);
		return memberHotelsFacilityDAO.getFacility(vo);
	}

	@Override
	public void updateFacility(MemberHotelsFacilityVO vo) {
		memberHotelsFacilityDAO.updateFacility(vo);
	}
	
}
