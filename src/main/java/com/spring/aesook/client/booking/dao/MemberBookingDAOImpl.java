package com.spring.aesook.client.booking.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.booking.vo.MemberBookingVO;

@Repository("memberBookingDAO")
public class MemberBookingDAOImpl implements MemberBookingDAO {
	
	private final static String namespace = "client.booking.dao.MemberBookingDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberBookingVO> getBookingList(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".bookingList", vo);
	}
	
	public MemberBookingVO getBookingInfo(String bookingCode) {
		MemberBookingVO vo = sqlSessionTemplate.selectOne(namespace + ".bookingInfo", bookingCode);
		return vo;
	}

	@Override
	public void cancelBooking(String bookingCode) {
		sqlSessionTemplate.update(namespace + ".cancelBooking", bookingCode);
		
	}
	
	
}
