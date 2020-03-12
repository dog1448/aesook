package com.spring.aesook.client.hotels.dao;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Repository("memberHotls")
public class MemberHotelsDAOImpl implements MemberHotelsDAO{
	
	private final static String namespace = "client.hotels.dao.MemberHotelsDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertHotels(MemberHotelsVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertHotels", vo);
	}

	@Override
	public List<MemberHotelsVO> getMyHotels(MemberVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".selectHotels", vo);
	}

	@Override
	public int getHotelsCode() {		
		return sqlSessionTemplate.selectOne(namespace + ".selectHotelsCode");
	}

	@Override
	public void modifyHotels(MemberHotelsVO memberHotelsVO) {
		sqlSessionTemplate.update(namespace+".modifyHotels",memberHotelsVO);
	}

	@Override
	public void modifyRooms(MemberRoomVO memberRoomVO) {
		sqlSessionTemplate.update(namespace+".modifyRoom",memberRoomVO);

	}

}
