package com.spring.aesook.client.hotels.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

@Repository
public class MemberRoomSortDAOImpl implements MemberRoomSortDAO {

	private final static String namespace = "client.hotels.dao.MemberRoomSortDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberRoomSortVO> getRoomSortList(int hotelsCode) {		
		return sqlSessionTemplate.selectList(namespace + ".selectRoomSort", hotelsCode);
	}

	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return sqlSessionTemplate.selectOne(namespace + ".getHotel", hotelsCode);
	}
}
