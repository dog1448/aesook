package com.spring.aesook.admin.datalist.service;

import java.util.List;

import com.spring.aesook.admin.datalist.vo.HotelsVO;

public interface HotelsService {
	public List<HotelsVO> getListHotels();
	public HotelsVO getHotels(int hotelsCode);
	public void updateHotel(HotelsVO vo);
}
