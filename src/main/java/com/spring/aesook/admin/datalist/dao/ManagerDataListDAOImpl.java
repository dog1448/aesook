package com.spring.aesook.admin.datalist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

@Repository("managerDataListDAO")
public class ManagerDataListDAOImpl implements ManagerDataListDAO {

	private final static String namespace = "admin.datalist.dao.ManagerDataListDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<ManagerBookingVO> getBookingList() {
		return sqlSessionTemplate.selectList(namespace + ".getBooking");
	}

	@Override
	public ManagerBookingVO getBookingInfo(String bookingCode) {
		ManagerBookingVO aaa = sqlSessionTemplate.selectOne(namespace + ".getBookingInfo", bookingCode);
		System.out.println(aaa);
		return aaa;
	}

	@Override
	public void setBookingInfo(ManagerBookingVO vo) {
		sqlSessionTemplate.update(namespace + ".setBookingInfo", vo); 
	}
	

	
	//---------------------------- 
	@Override
	public List<ManagerHotelsVO> getListHotels() {
		return sqlSessionTemplate.selectList(namespace+".getListHotels");
	}

	@Override
	public ManagerHotelsVO getHotels(int hotelsCode) {
		return sqlSessionTemplate.selectOne(namespace+".getHotels",hotelsCode);
	}

	@Override
	public void updateHotel(ManagerHotelsVO vo) {
		sqlSessionTemplate.update(namespace+".updateHotel",vo);
	}
	

}
