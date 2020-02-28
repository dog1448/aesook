package com.spring.aesook.client.hotels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberRoomDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

@Service("memberRoomService")
public class MemberRoomServiceImpl implements MemberRoomService {
	
	@Autowired
	private MemberRoomDAO memberRoomDAO;

	// Get Room List
	@Override
	public List<MemberRoomVO> getRoomList(int hotelsCode) {		
		return memberRoomDAO.getRoomList(hotelsCode);
	}

	// Get Accommodation
	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return memberRoomDAO.getHotel(hotelsCode);
	}

	// Get Room Description
	@Override
	public MemberRoomVO getRoomDescription(int hotelsCode, String roomName) {
		
		MemberRoomVO vo = new MemberRoomVO();
		vo.setHotelsCode(hotelsCode);
		vo.setRoomName(roomName);
		
		return memberRoomDAO.getRoom(vo);
	}

	//Insert Room
	@Override
	public void insertRoom(MemberRoomVO vo) {
		memberRoomDAO.insertRoom(vo);
	}

	//Room Name Check
	@Override
	public int roomNameCheck(MemberRoomVO vo) {		
		return memberRoomDAO.roomNameCheck(vo);
	}


}
