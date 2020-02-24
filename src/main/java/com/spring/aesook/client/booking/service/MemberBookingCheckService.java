package com.spring.aesook.client.booking.service;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberBookingCheckService {
	
	List<MemberBookingVO> getBookingList(MemberVO user);
	
	MemberBookingVO getBookingInfo(String bookingCode);
	
	void cancelBooking(String bookingCode);
}
