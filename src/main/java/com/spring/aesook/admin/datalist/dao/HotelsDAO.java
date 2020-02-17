package com.spring.aesook.admin.datalist.dao;

import java.util.List;

import com.spring.aesook.admin.datalist.vo.HotelsVO;

public interface HotelsDAO {
	//insert,delete/update/get/getList/updateList +[Έν»η]
	public List<HotelsVO> getListHotels();
	public HotelsVO getHotels(int hotelsCode);
	public void updateHotel(HotelsVO vo);
}
