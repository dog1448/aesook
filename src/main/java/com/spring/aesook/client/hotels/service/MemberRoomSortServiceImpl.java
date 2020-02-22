package com.spring.aesook.client.hotels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberRoomSortDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

@Service("memberRoomSortService")
public class MemberRoomSortServiceImpl implements MemberRoomSortService {
	
	@Autowired
	private MemberRoomSortDAO memberRoomSortDAO;

	@Override
	public List<MemberRoomSortVO> getRoomSortList(int hotelsCode) {		
		return memberRoomSortDAO.getRoomSortList(hotelsCode);
	}

	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return memberRoomSortDAO.getHotel(hotelsCode);
	}

}
