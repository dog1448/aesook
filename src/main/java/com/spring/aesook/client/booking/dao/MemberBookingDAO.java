package com.spring.aesook.client.booking.dao;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

public interface MemberBookingDAO {
	List<MemberBookingVO> getBookingList(MemberBookingVO vo);
	
	List<MemberBookingVO> getCanceledBookingList(MemberBookingVO vo);

	MemberBookingVO getBookingInfo(int bookingCode);
	
	void cancelBooking(int bookingCode);
	
}
