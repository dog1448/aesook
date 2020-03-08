package com.spring.aesook.client.image.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("memberUpdateHotelsRoomSortImageService")
public class MemberUpdateHotelsRoomSortImageServiceImpl implements MemberUpdateHotelsRoomSortImageService {

	@Autowired
	private MemberImageDAO memberImageDAO;
	
	public void updateRoomSort(List<Integer> imageNoList,  MemberHotelsImageVO vo) {
		if(vo.getRoomSort().equals("null")) {
			vo.setRoomSort(null);
		}
		List<MemberHotelsImageVO> hotelsImageList = new ArrayList<MemberHotelsImageVO>();
		for (int i = 0; i < imageNoList.size(); i++) {
			MemberHotelsImageVO hotels = new MemberHotelsImageVO();
			hotels.setHotelsCode(vo.getHotelsCode());
			hotels.setHotelsImageNo(imageNoList.get(i));
			hotels.setRoomSort(vo.getRoomSort());
			hotels.setRoomSortStatus("U");
			hotelsImageList.add(hotels);
		}
		memberImageDAO.updateRoomSort(hotelsImageList);
	}
	
}
