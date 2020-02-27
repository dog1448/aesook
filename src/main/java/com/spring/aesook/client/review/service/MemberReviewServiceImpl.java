package com.spring.aesook.client.review.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.dao.MemberBookingDAO;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.review.dao.MemberReviewDAO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Service("memberReviewService")
public class MemberReviewServiceImpl implements MemberReviewService {
	
	@Autowired
	private MemberReviewDAO memberReivewDAO;
	@Autowired
	private MemberBookingDAO memberBookingDAO;
	
	@Override
	public void insertReview(MemberReviewVO vo) {
		memberReivewDAO.insertReview(vo);
	}

	@Override
	public MemberBookingVO getBookingInfo(String bookingCode) {
		return memberBookingDAO.getBookingInfo(bookingCode);
	}
	
}
