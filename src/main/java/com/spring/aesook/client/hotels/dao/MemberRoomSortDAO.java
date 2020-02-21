package com.spring.aesook.client.hotels.dao;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomSortVO;

public interface MemberRoomSortDAO {
	List<MemberRoomSortVO> getRoomSortList(int hotelsCode);
}
