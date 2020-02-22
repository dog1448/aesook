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

	// 방 목록 가져오는 서비스
	@Override
	public List<MemberRoomSortVO> getRoomSortList(int hotelsCode) {		
		return memberRoomSortDAO.getRoomSortList(hotelsCode);
	}

	// 방 목록 화면에 사용할 숙소 정보 가져올 서비스
	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return memberRoomSortDAO.getHotel(hotelsCode);
	}

	// 방 하나의 정보 가져올 서비스
	@Override
	public MemberRoomSortVO getRoomDescription(int hotelsCode, String sortType) {
		
		MemberRoomSortVO vo = new MemberRoomSortVO();
		vo.setHotelsCode(hotelsCode);
		vo.setSortType(sortType);
		
		return memberRoomSortDAO.getRoomSort(vo);
	}

}
