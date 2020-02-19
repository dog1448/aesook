package com.spring.aesook.client.hotels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberHotelsDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

@Service("MemberHotelsService")
public class MemberHotelsServiceImpl implements MemberHotelsService {
	
	@Autowired
	private MemberHotelsDAO memberHotelsDAO;
	
	@Override
	public int getHotelsCode() {
		return memberHotelsDAO.getHotelsCode();
	}

	@Override
	public void insertHotels(MemberHotelsVO vo) {
		vo.setHotelsCode(getHotelsCode());
		memberHotelsDAO.insertHotels(vo);
		
	}

	@Override
	public void insertSortType(MemberRoomSortVO vo) {
		vo.setHotelsCode(getHotelsCode());
		memberHotelsDAO.insertSortType(vo);
	}
	
}
