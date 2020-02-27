package com.spring.aesook.client.booking.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.review.vo.MemberReviewVO;

@Repository("memberBookingDAO")
public class MemberBookingDAOImpl implements MemberBookingDAO {
	
	private final static String namespace = "client.booking.dao.MemberBookingDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberBookingVO> getBookingList(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".bookingList", vo);
	}
	
	@Override
	public List<MemberBookingVO> getCanceledBookingList(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".canceledBookingList", vo);
	}
	
	public MemberBookingVO getBookingInfo(int bookingCode) {
		MemberBookingVO vo = sqlSessionTemplate.selectOne(namespace + ".bookingInfo", bookingCode);
		return vo;
	}

	@Override
	public void cancelBooking(int bookingCode) {
		sqlSessionTemplate.update(namespace + ".cancelBooking", bookingCode);
		
	}


}
