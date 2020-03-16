package com.spring.aesook.client.booking.service;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;

public interface MemberBookingHotelsService {

	public List<MemberBookingVO> getMemberBookingList(MemberBookingVO vo);
	public MemberBookingVO getMemberBooking(MemberBookingVO vo);
	
}
