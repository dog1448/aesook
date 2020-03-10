package com.spring.aesook.client.statistics.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberStatisticsDAOImpl implements MemberStatisticsDAO {

	private final static String namespace = "client.statistics.dao.MemberStatisticsDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<HashMap<Object, Object>> getTotalPrice(HashMap<Object, Object> map) {		
		return sqlSessionTemplate.selectList(namespace + ".getMonthlyTotalPrice", map);
	}

}
