package com.spring.aesook.admin.datalist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

@Repository("managerDataListDAO")
public class ManageDataListDAOImpl implements ManagerDataListDAO {

	private final static String namespace = "admin.datalist.vo.ManagerVO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<ManagerBookingVO> getBookingList() {
		return sqlSessionTemplate.selectList(namespace + ".getBooking");
	}

	@Override
	public ManagerBookingVO getBookingInfo(String bookingCode) {
		return sqlSessionTemplate.selectOne(namespace + ".getBookingInfo", bookingCode);
	}

	@Override
	public void setBookingInfo(ManagerBookingVO vo) {
		sqlSessionTemplate.update(namespace + ".setBookingInfo", vo); 
	}
	
	
}
