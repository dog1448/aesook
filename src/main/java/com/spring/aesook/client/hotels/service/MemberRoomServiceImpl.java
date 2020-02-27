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

	// 방 목록 가져오는 서비스
	@Override
	public List<MemberRoomVO> getRoomList(int hotelsCode) {		
		return memberRoomDAO.getRoomList(hotelsCode);
	}

	// 방 목록 화면에 사용할 숙소 정보 가져올 서비스
	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return memberRoomDAO.getHotel(hotelsCode);
	}

	// 방 하나의 정보 가져올 서비스
	@Override
	public MemberRoomVO getRoomDescription(int hotelsCode, String roomName) {
		
		MemberRoomVO vo = new MemberRoomVO();
		vo.setHotelsCode(hotelsCode);
		vo.setRoomName(roomName);
		
		return memberRoomDAO.getRoom(vo);
	}

	@Override
	public void insertRoom(MemberRoomVO vo) {
		memberRoomDAO.insertRoom(vo);
	}

	@Override
	public int roomNameCheck(MemberRoomVO vo) {		
		return memberRoomDAO.roomNameCheck(vo);
	}


}
