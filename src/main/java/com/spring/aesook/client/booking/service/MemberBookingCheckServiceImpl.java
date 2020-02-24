package com.spring.aesook.client.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.dao.MemberBookingDAO;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Service("MemberBookingCheckService")
public class MemberBookingCheckServiceImpl implements MemberBookingCheckService {
	
	@Autowired
	private MemberBookingDAO memberBookingDAO;

	@Override
	public List<MemberBookingVO> getBookingList(MemberVO user) {
		MemberBookingVO vo = new MemberBookingVO();
		vo.setMemberId(user.getMemberId());
		return memberBookingDAO.getBookingList(vo);
	}

	@Override
	public MemberBookingVO getBookingInfo(String bookingCode) {
		return memberBookingDAO.getBookingInfo(bookingCode);
	}

	@Override
	public void cancelBooking(String bookingCode) {
		memberBookingDAO.cancelBooking(bookingCode);
	}
	
	
}
