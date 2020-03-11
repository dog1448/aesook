package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberRoomDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("memberRoomService")
public class MemberRoomServiceImpl implements MemberRoomService {
	
	@Autowired
	private MemberRoomDAO memberRoomDAO;

	// Get Room List
	@Override
	public List<MemberRoomVO> getRoomList(int hotelsCode) {	
		List<MemberHotelsImageVO> roomPic = memberRoomDAO.getRoomPic(hotelsCode);
		List<MemberRoomVO> roomList = memberRoomDAO.getRoomList(hotelsCode);
		
		for(MemberRoomVO vo : roomList) {
			for(MemberHotelsImageVO ivo : roomPic) {
				if(vo.getRoomSort().equals(ivo.getRoomSort())) {
					vo.setHotelsImageName(ivo.getHotelsImageName());
					vo.setHotelsImagePath(ivo.getHotelsImagePath());
					vo.setRoomSortStatus(ivo.getRoomSortStatus());
				}
			}
		}
		
		return roomList;
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

	//Insert Room
	@Override
	public void insertRoom(ArrayList<MemberRoomVO> roomList) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("roomList", roomList);
		memberRoomDAO.insertRoom(map);
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

	@Override
	public List<MemberHotelsImageVO> getAllPic(int hotelsCode) {
		MemberHotelsVO vo = new MemberHotelsVO();
		vo.setHotelsCode(hotelsCode);
		return memberRoomDAO.getAllPic(vo);
	}

	@Override
	public List<MemberHotelsImageVO> getAllRoomPic(int hotelsCode, String roomSort) {
		MemberHotelsImageVO vo = new MemberHotelsImageVO();
		vo.setHotelsCode(hotelsCode);
		vo.setRoomSort(roomSort);
		return memberRoomDAO.getAllRoomPic(vo);
	}
	

}
