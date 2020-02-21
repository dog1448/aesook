package com.spring.aesook.client.review.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.review.dao.MemberReviewDAO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Service("memberReviewService")
public class MemberReviewServiceImpl implements MemberReviewServiece {
	
	@Autowired
	private MemberReviewDAO memberReivewDAO;
	
	@Override
	public void insertReview(MemberReviewVO reviewVO) {
		memberReivewDAO.insertReview(reviewVO);
	}

}
