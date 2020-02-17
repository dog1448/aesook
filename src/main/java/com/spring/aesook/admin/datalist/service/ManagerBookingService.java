package com.spring.aesook.admin.datalist.service;

import java.util.List;

import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

public interface ManagerBookingService {
	
	List<ManagerBookingVO> getBookingList();
	
	ManagerBookingVO getBookingInfo(String bookingCode);
	
	void update(ManagerBookingVO vo);
}
