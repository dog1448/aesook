package com.spring.aesook.client.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.dao.MemberBookingDAO;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
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
	public int getTotalPrice(MemberBookingVO bookingVO, MemberRoomVO roomVO) {
		int allDay = memberBookingDAO.getAllDay(bookingVO);
		int weekDay = memberBookingDAO.getWeekDay(bookingVO);
		int weekendDay = allDay - weekDay;
		int totalPrice = roomVO.getRoomStandardPrice()*weekDay + roomVO.getRoomHolidayPrice()*weekendDay;
		return totalPrice;
	}
	
	public int getBookingSeq() {
		return memberBookingDAO.getBookingSeq();
	}
	
	public void insertBooking(MemberBookingVO vo) {
		memberBookingDAO.insertBooking(vo);
	}

	public MemberBookingVO getMemberBookingTest(MemberBookingVO vo) {
		return memberBookingDAO.getMemberBookingTest(vo);
	}
	
	public void deleteMemberBooking(MemberBookingVO vo) {
		memberBookingDAO.deleteMemberBooking(vo);
	}

	public void updateMemberBookingTid(MemberBookingVO vo) {
		memberBookingDAO.updateMemberBookingTid(vo);
	}
}
