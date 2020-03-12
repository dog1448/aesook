package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface MemberRoomService {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoomDescription(int hotelsCode, String roomSort);
	void insertRoom(ArrayList<MemberRoomVO> roomList);
	int roomNameCheck(MemberRoomVO vo);
	public List<String> getRoomSortTypeList(List<MemberRoomVO> roomList);
	List<String> getRoomSortTypeList(int hotelsCode);
	List<MemberHotelsImageVO> getAllPic(int hotelsCode);
	List<MemberHotelsImageVO> getAllRoomPic(int hotelsCode, String roomSort);
}
