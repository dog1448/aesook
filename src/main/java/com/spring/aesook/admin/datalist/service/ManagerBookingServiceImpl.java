package com.spring.aesook.admin.datalist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.datalist.dao.ManagerDataListDAO;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

@Service("managerBookingService")
public class ManagerBookingServiceImpl implements ManagerBookingService {
	
	@Autowired
	private ManagerDataListDAO managerDataListDAO;

	@Override
	public List<ManagerBookingVO> getBookingList() {
		return managerDataListDAO.getBookingList();
	}

	@Override
	public ManagerBookingVO getBookingInfo(String bookingCode) {
		return managerDataListDAO.getBookingInfo(bookingCode);
	}

	@Override
	public void update(ManagerBookingVO vo) {
		managerDataListDAO.setBookingInfo(vo);
		
	}	
}
