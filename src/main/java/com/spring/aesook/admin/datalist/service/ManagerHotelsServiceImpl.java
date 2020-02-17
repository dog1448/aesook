package com.spring.aesook.admin.datalist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.datalist.dao.ManagerDataListDAO;
import com.spring.aesook.admin.datalist.vo.ManagerHotelsVO;

@Service("managerHotelService")
public class ManagerHotelsServiceImpl implements ManagerHotelsService {
	@Autowired
	private ManagerDataListDAO managerDataListDAO;
	@Override
	public List<ManagerHotelsVO> getListHotels() {
		return managerDataListDAO.getListHotels();
	}
	@Override
	public ManagerHotelsVO getHotels(int hotelsCode) {
		return managerDataListDAO.getHotels(hotelsCode);
	}
	@Override
	public void updateHotel(ManagerHotelsVO vo) {
		managerDataListDAO.updateHotel(vo);
		
	}

}
