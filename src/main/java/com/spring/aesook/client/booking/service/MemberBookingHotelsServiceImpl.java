package com.spring.aesook.client.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.dao.MemberBookingDAO;
import com.spring.aesook.client.booking.vo.MemberBookingVO;

@Service("memberBookingHotelsService")
public class MemberBookingHotelsServiceImpl implements MemberBookingHotelsService {

	@Autowired
	private MemberBookingDAO memberBookingDAO;
	
	public List<MemberBookingVO> getMemberBookingList(MemberBookingVO vo) {
		return memberBookingDAO.getMemberBookingList(vo);
	}
	
	public MemberBookingVO getMemberBooking(MemberBookingVO vo) {
		return memberBookingDAO.getMemberBooking(vo);
	}
	
}
