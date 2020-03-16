package com.spring.aesook.client.booking.dao;

import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;

public interface MemberBookingDAO {
	List<MemberBookingVO> getBookingList(MemberBookingVO vo);
	
	List<MemberBookingVO> getCanceledBookingList(MemberBookingVO vo);

	MemberBookingVO getBookingInfo(int bookingCode);
	
	void cancelBooking(int bookingCode);
	
	List<String> getPossibleBooking(MemberBookingVO vo);
	
	List<String> getRoomPossible(MemberBookingVO vo);
	
	int getWeekDay(MemberBookingVO vo);
	
	int getAllDay(MemberBookingVO vo);
	

	int getBookingSeq();

	void insertBooking(MemberBookingVO vo);
	
	public List<MemberBookingVO> getMemberBookingList(MemberBookingVO vo);

	public MemberBookingVO getMemberBooking(MemberBookingVO vo);
}
