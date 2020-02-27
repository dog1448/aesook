package com.spring.aesook.client.review.dao;

import com.spring.aesook.client.review.vo.MemberReviewVO;

public interface MemberReviewDAO {
	void insertReview(MemberReviewVO vo);
	
	void updateStatus(int bookingCode);
	
	MemberReviewVO getReview(int bookingCode);
}
