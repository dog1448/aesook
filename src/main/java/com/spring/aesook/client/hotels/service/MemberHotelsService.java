package com.spring.aesook.client.hotels.service;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

public interface MemberHotelsService {
	List<MemberHotelsVO> getMyHotels(MemberVO vo);
	List<MemberReviewVO> getReviewList(int hotelsCode);
	String getScoreAvg(int hotelsCode);
	int getHotelsCode();
}
