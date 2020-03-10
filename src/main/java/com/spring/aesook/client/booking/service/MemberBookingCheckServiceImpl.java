package com.spring.aesook.client.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.dao.MemberBookingDAO;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.client.review.dao.MemberReviewDAO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Service("MemberBookingCheckService")
public class MemberBookingCheckServiceImpl implements MemberBookingCheckService {
	
	@Autowired
	private MemberBookingDAO memberBookingDAO;
	@Autowired
	private MemberReviewDAO memberReivewDAO;
	

	@Override
	public List<MemberBookingVO> getBookingList(MemberVO user) {
		MemberBookingVO vo = new MemberBookingVO();
		vo.setMemberId(user.getMemberId());
		return memberBookingDAO.getBookingList(vo);
	}

	@Override
	public List<MemberBookingVO> getCanceledBookingList(MemberVO user) {
		MemberBookingVO vo = new MemberBookingVO();
		vo.setMemberId(user.getMemberId());
		return memberBookingDAO.getCanceledBookingList(vo);
	}

	@Override
	public MemberBookingVO getBookingInfo(int bookingCode) {
		return memberBookingDAO.getBookingInfo(bookingCode);
	}

	@Override
	public void cancelBooking(int bookingCode) {
		memberBookingDAO.cancelBooking(bookingCode);
	}
	
	@Override
	public MemberReviewVO getReview(int bookingCode) {
		return memberReivewDAO.getReview(bookingCode);
	}

	@Override
	public List<String> getPossibleBooking(MemberBookingVO vo) {
		return memberBookingDAO.getPossibleBooking(vo);
	}

	@Override
	public List<String> getRoomPossible(MemberBookingVO vo) {
		return memberBookingDAO.getRoomPossible(vo);
	}

	@Override
	public int getWeekDay(MemberBookingVO vo) {
		return memberBookingDAO.getWeekDay(vo);
	}

	@Override
	public int getAllDay(MemberBookingVO vo) {
		return memberBookingDAO.getAllDay(vo);
	}
	
	/*
	 int 전체 = memberBookingDAO.getAllDay(vo)
	 int 평일 = memberBookingDAO.getWeekDay(vo)
	 int 주말 = 전체-평일
	 roomVO.getStandardPrice * 평일
	 roomVO.getHolidayPrice * 주말
	 int 총결제액 = 
	 */
}
