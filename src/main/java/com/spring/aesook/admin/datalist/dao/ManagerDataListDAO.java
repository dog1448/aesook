package com.spring.aesook.admin.datalist.dao;

import java.util.List;

import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;
import com.spring.aesook.admin.datalist.vo.ManagerBookingVO;

public interface ManagerDataListDAO {

	public List<ManagerBookingVO> getBookingList();
	
	public ManagerBookingVO getBookingInfo(String bookingCode);
	
	public void setBookingInfo(ManagerBookingVO vo);
	
	public List<ManagerHotelsVO> getListHotels();
	
	public ManagerHotelsVO getHotels(int hotelsCode);
	
	public void updateHotel(ManagerHotelsVO vo);
}
