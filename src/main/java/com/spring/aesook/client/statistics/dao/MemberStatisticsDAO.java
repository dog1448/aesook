package com.spring.aesook.client.statistics.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberStatisticsDAO {
	List<HashMap<Object, Object>> getTotalPrice(HashMap<Object, Object> map);
	List<String> getRoomName(MemberVO vo);
	HashMap<Object, Object> getRoomRatio(MemberBookingVO vo);
}
