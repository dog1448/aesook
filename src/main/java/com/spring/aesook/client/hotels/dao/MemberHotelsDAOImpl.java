package com.spring.aesook.client.hotels.dao;

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
	public MemberHotelsVO getMyHotels(MemberVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".selectHotels", vo);
	}

}
