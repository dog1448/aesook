package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Repository
public class MemberHotelsListDAOImpl implements MemberHotelsListDAO {
	
	private final static String namespace = "client.hotels.dao.MemberHotelsListDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int countHotelsList(HashMap<Object, Object> map) {		
		return sqlSessionTemplate.selectOne(namespace + ".countHotelsList", map);
	}
	
	@Override
	public List<MemberHotelsVO> selectHotelsList(HashMap<Object, Object> map) {		
		return sqlSessionTemplate.selectList(namespace + ".selectHotelsList", map);
	}

	@Override
	public List<MemberHotelsVO> selectHotelsListById(MemberVO vo) {		
		return sqlSessionTemplate.selectList(namespace + ".selectHotelsListById", vo);
	}
	//전체 숙소 top 10
	@Override
	public List<MemberHotelsVO> selectAccommodationTop10() {		
		return sqlSessionTemplate.selectList(namespace + ".selectAccommodationTop10");
	}

	@Override
	public List<MemberHotelsVO> selectAccommodationTop10ByType(MemberHotelsVO vo) {		
		return sqlSessionTemplate.selectList(namespace + ".selectAccommodationTop10ByType", vo);
	}
	//검색된 호텔 리스트
	@Override
	public List<MemberHotelsVO> getSearchedHotelsList(MemberHotelsVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getSearchedHotelsList", vo);
	}
	

}
