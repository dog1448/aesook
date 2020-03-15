package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface MemberRoomDAO {
	List<MemberRoomVO> getRoomList(int hotelsCode);
	List<MemberRoomVO> getRoomList(MemberRoomVO vo);
	public void deleteRoom(MemberRoomVO vo);
	MemberHotelsVO getHotel(int hotelsCode);
	MemberRoomVO getRoom(MemberRoomVO vo);
	List<MemberRoomVO> getRoomSortList(MemberRoomVO vo);
	void insertRoom(HashMap<Object, Object> map);
	public void insertRoomSort(MemberRoomVO vo);
	public void updateRoomSort(MemberRoomVO vo);
	public void deleteRoomSort(MemberRoomVO vo);
	int roomNameCheck(MemberRoomVO vo);
	List<String> getRoomSortTypeList(MemberHotelsVO vo);
	List<MemberHotelsImageVO> getAllPic(MemberHotelsVO vo);
	List<MemberHotelsImageVO> getRoomPic(int hotelsCode);
	List<MemberHotelsImageVO> getAllRoomPic(MemberHotelsImageVO vo);
}
