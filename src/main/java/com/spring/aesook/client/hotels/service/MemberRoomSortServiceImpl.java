package com.spring.aesook.client.hotels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberRoomDAO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

@Service("memberRoomSortService")
public class MemberRoomSortServiceImpl implements MemberRoomSortService {

	@Autowired
	private MemberRoomDAO memberRoomDAO;
	
	public void insertRoomSort(MemberRoomVO vo) {
		memberRoomDAO.insertRoomSort(vo);
	}
	
	public void updateRoomSort(MemberRoomVO vo) {
		memberRoomDAO.updateRoomSort(vo);
	}
	
	public void deleteRoomSort(MemberRoomVO vo) {
		memberRoomDAO.deleteRoomSort(vo);
	}
	
}
