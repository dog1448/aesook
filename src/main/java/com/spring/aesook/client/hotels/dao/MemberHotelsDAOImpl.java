package com.spring.aesook.client.hotels.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;
import com.spring.aesook.admin.manager.vo.ManagerVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsFacilityVO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

@Repository("memberHotls")
public class MemberHotelsDAOImpl implements MemberHotelsDAO{
	
	private final static String namespace = "client.hotels.dao.MemberHotelsDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int getHotelsCode() {
		int code = sqlSessionTemplate.selectOne(namespace + ".getHotelsCode");
		return code;
	}

	@Override
	public void insertHotels(MemberHotelsVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertHotels", vo);
	}

	@Override
	public void insertSortType(MemberRoomSortVO vo) {
		sqlSessionTemplate.insert(namespace + ".inserSortType", vo);
		
	}

//	@Override
//	public void insertRoom(MemberRoomVO vo) {
//	}
//
//	@Override
//	public void inserHotelsFacility(MemberHotelsFacilityVO vo) {
//	}
	
}
