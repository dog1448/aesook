package com.spring.aesook.client.hotels.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

@Repository
public class MemberHotelsFacilityDAOImpl implements MemberHotelsFacilityDAO {
	
	private final static String namespace = "client.hotels.dao.MemberHotelsFacilityDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MemberHotelsFacilityVO getFacility(MemberHotelsVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".selectFacility", vo);
	}

	@Override
	public void insertFacility(MemberHotelsFacilityVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertFacility", vo);
	}

	@Override
	public void updateFacility(MemberHotelsFacilityVO vo) {
		sqlSessionTemplate.update(namespace + ".updateFacility", vo);
	}

}
