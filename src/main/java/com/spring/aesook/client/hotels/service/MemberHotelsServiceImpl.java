package com.spring.aesook.client.hotels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberHotelsDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.dao.MemberReviewDAO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Service("memberHotelsService")
public class MemberHotelsServiceImpl implements MemberHotelsService {
	
	@Autowired
	private MemberHotelsDAO memberHotelsDAO;
	@Autowired
	private MemberReviewDAO memberReviewDAO;
	
	@Override
	public void insertHotels(MemberHotelsVO vo) {
		memberHotelsDAO.insertHotels(vo);
	}
	
	//내가(호텔사장이) 등록한 호텔 리스트
	@Override
	public MemberHotelsVO getMyHotels(MemberVO vo) {
		return memberHotelsDAO.getMyHotels(vo);
	}
	
	//후기 리스트
	@Override
	public List<MemberReviewVO> getReviewList(int hotelsCode) {
		return memberReviewDAO.getReviewList(hotelsCode);
	}
	
	//후기 평점
	@Override
	public String getScoreAvg(int hotelsCode) {
		return memberReviewDAO.getScoreAvg(hotelsCode);
	}
	
}
