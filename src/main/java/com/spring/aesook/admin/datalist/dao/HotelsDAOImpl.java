package com.spring.aesook.admin.datalist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.datalist.vo.HotelsVO;
@Repository("hotelsDAO")
public class HotelsDAOImpl implements HotelsDAO{
	private final static String namespace = "admin.hotels.vo.HotelsVO";
	@Autowired
	private SqlSessionTemplate sqlSeeSessionTemplate;
	
	@Override
	public List<HotelsVO> getListHotels() {
		return sqlSeeSessionTemplate.selectList(namespace+".getListHotels");
	}

	@Override
	public HotelsVO getHotels(int hotelsCode) {
		return sqlSeeSessionTemplate.selectOne(namespace+".getHotels",hotelsCode);
	}

	@Override
	public void updateHotel(HotelsVO vo) {
		sqlSeeSessionTemplate.update(namespace+".updateHotel",vo);
	}
	
	
}
