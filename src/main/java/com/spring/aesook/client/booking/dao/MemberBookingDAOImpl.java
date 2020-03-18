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
		return sqlSessionTemplate.selectList(namespace + ".getBookingList", vo);
	}
	
	@Override
	public List<MemberBookingVO> getCanceledBookingList(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getCanceledBookingList", vo);
	}
	
	public MemberBookingVO getBookingInfo(int bookingCode) {
		MemberBookingVO vo = sqlSessionTemplate.selectOne(namespace + ".getBookingInfo", bookingCode);
		return vo;
	}

	@Override
	public void cancelBooking(int bookingCode) {
		sqlSessionTemplate.update(namespace + ".updateBookingCancel", bookingCode);
		
	}

	@Override
	public List<String> getPossibleBooking(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getPossibleBooking", vo);
	}

	@Override
	public List<String> getRoomPossible(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getRoomPossible", vo);
	}

	@Override
	public int getWeekDay(MemberBookingVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getWeekDay", vo);
	}

	@Override
	public int getAllDay(MemberBookingVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getAllDay", vo);
	}

	
	public int getBookingSeq() {
		return sqlSessionTemplate.selectOne(namespace + ".getBookingSeq");
    }

	@Override
	public void insertBooking(MemberBookingVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertBooking", vo);
	}
	
	public List<MemberBookingVO> getMemberBookingList(MemberBookingVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getMemberBookingList", vo);
	}
	
	public MemberBookingVO getMemberBooking(MemberBookingVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getMemberBooking", vo);
	}
	
	public MemberBookingVO getMemberBookingTest(MemberBookingVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getMemberBookingTest", vo);
	}
	
	public void deleteMemberBooking(MemberBookingVO vo) {
		sqlSessionTemplate.delete(namespace + ".deleteMemberBooking", vo);
	}
}
