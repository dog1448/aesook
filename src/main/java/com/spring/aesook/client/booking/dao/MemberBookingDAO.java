package com.spring.aesook.client.booking.dao;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;

public interface MemberBookingDAO {
	List<MemberBookingVO> getBookingList(MemberBookingVO vo);
	
	List<MemberBookingVO> getCanceledBookingList(MemberBookingVO vo);

	MemberBookingVO getBookingInfo(int bookingCode);
	
	void cancelBooking(int bookingCode);
	
	List<String> getPossibleBooking(MemberBookingVO vo);
	
	int getRoomPossible(MemberBookingVO vo);
}
