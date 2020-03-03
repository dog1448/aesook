package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberHotelsListDAO {
	public int countHotelsList(HashMap<Object, Object> map);
	public List<MemberHotelsVO> selectHotelsList(HashMap<Object, Object> map);
	public List<MemberHotelsVO> selectHotelsListById(MemberVO vo);
	public List<MemberHotelsVO> selectAccommodationTop10();
	public List<MemberHotelsVO> selectAccommodationTop10ByType(MemberHotelsVO vo);
}
