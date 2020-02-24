package com.spring.aesook.client.booking.dao;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;

public interface MemberBookingDAO {
	List<MemberBookingVO> getBookingList(MemberBookingVO vo);
	
	MemberBookingVO getBookingInfo(String bookingCode);
	
	void cancelBooking(String bookingCode);
}
