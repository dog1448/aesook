package com.spring.aesook.admin.datalist.service;

import java.util.List;

import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;

public interface ManagerHotelsService {
	public List<ManagerHotelsVO> getListHotels();
	public ManagerHotelsVO getHotels(int hotelsCode);
	public void updateHotel(ManagerHotelsVO vo);
}
