package com.spring.aesook.admin.datalist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.datalist.dao.HotelsDAOImpl;
import com.spring.aesook.admin.datalist.vo.HotelsVO;

@Service("hotelService")
public class HotelsServiceImpl implements HotelsService {
	@Autowired
	private HotelsDAOImpl hotelsDAO;
	@Override
	public List<HotelsVO> getListHotels() {
		return hotelsDAO.getListHotels();
	}
	@Override
	public HotelsVO getHotels(int hotelsCode) {
		return hotelsDAO.getHotels(hotelsCode);
	}
	@Override
	public void updateHotel(HotelsVO vo) {
		hotelsDAO.updateHotel(vo);
		
	}

}
