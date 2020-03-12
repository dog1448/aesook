package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.HashMap;
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
	public MemberRoomVO getRoomDescription(int hotelsCode, String roomSort) {
		
		MemberRoomVO vo = new MemberRoomVO();
		vo.setHotelsCode(hotelsCode);
		vo.setRoomSort(roomSort);
		
		return memberRoomDAO.getRoom(vo);
	}

	//Insert Room -----------------------------------> 여기에요 수정
	@Override
	public void insertRoom(ArrayList<MemberRoomVO> roomList) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("roomList", roomList);
		memberRoomDAO.insertRoom(map);
	}
	
	public void insertRoom(List<MemberRoomVO> roomSortList, List<MemberRoomVO> roomNameList, int hotelsCode) {
		
		List<MemberRoomVO> roomFinalList = new ArrayList<MemberRoomVO>();
		
	}


	//Room Name Check
	@Override
	public int roomNameCheck(MemberRoomVO vo) {		
		return memberRoomDAO.roomNameCheck(vo);
	}
	
	
	public List<String> getRoomSortTypeList(int hotelsCode) {
		MemberHotelsVO vo = new MemberHotelsVO();
		vo.setHotelsCode(hotelsCode);
		return memberRoomDAO.getRoomSortTypeList(vo);
	}

	public List<String> getRoomSortTypeList(List<MemberRoomVO> roomList) {
		List<String> list = new ArrayList<String>();
		for (MemberRoomVO room : roomList) {
			list.add(room.getRoomSort());
		}
		return list;
	}
}
