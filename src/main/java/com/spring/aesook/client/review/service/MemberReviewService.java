package com.spring.aesook.client.review.service;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

public interface MemberReviewService {
	
	void insertReview(MemberReviewVO vo);
	
	MemberBookingVO getBookingInfo(String bookingCode);
}
