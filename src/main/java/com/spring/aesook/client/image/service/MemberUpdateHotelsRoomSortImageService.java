package com.spring.aesook.client.image.service;

import java.util.List;

import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface MemberUpdateHotelsRoomSortImageService {

	public void updateRoomSort(List<Integer> imageNoList,  MemberHotelsImageVO vo);
	
}
