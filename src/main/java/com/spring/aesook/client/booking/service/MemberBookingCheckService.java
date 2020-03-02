package com.spring.aesook.client.booking.service;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

public interface MemberBookingCheckService {
	
	List<MemberBookingVO> getBookingList(MemberVO user);
	
	List<MemberBookingVO> getCanceledBookingList(MemberVO user);

	MemberBookingVO getBookingInfo(int bookingCode);
	
	void cancelBooking(int bookingCode);
	
	MemberReviewVO getReview(int bookingCode);

}