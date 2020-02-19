package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.common.paging.PagingVO;

@Repository
public class MemberHotelsListDAOImpl implements MemberHotelsListDAO {
	
	private final static String namespace = "client.hotels.dao.MemberHotelsListDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MemberHotelsVO> selectHotelsList(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countHotelsList(HashMap<Object, Object> map) {		
		return sqlSessionTemplate.selectOne(namespace + ".countHotelsList", map);
	}

}
