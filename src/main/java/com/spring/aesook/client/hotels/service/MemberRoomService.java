package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface MemberRoomService {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	List<MemberRoomVO> getRoomList(MemberRoomVO vo);
	public void deleteRoom(MemberRoomVO vo);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoomDescription(int hotelsCode, String roomSort);
	public List<MemberRoomVO> getRoomSortList(MemberRoomVO vo);
	public void insertRoom(List<MemberRoomVO> roomSortList, List<MemberRoomVO> roomNameList, int hotelsCode);
	int roomNameCheck(MemberRoomVO vo);
	public List<String> getRoomSortTypeList(List<MemberRoomVO> roomList);
	List<String> getRoomSortTypeList(int hotelsCode);
	List<MemberHotelsImageVO> getAllPic(int hotelsCode);
	List<MemberHotelsImageVO> getAllRoomPic(int hotelsCode, String roomSort);
}
