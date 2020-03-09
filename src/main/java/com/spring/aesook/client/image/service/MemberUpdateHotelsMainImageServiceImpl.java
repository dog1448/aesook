package com.spring.aesook.client.image.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("memberUpdateHotelsMainImageService")
public class MemberUpdateHotelsMainImageServiceImpl implements MemberUpdateHotelsMainImageService {

	@Autowired
	private MemberImageDAO memberImageDAO;
	
	public MemberHotelsImageVO updateHotelsMainImage(MemberHotelsImageVO vo) {
		
		// update 'H'
		vo.setHotelsImageStatus("H");
		memberImageDAO.updateStatusMemberHotelsImage(vo);
		
		// update 'M'
		vo.setHotelsImageStatus("M");
		memberImageDAO.updateStatusMemberHotelsImage(vo);
		
		// selectOne
		vo.setRoomSortStatus("U"); // null 포인트 방지
		return memberImageDAO.getHotelsImage(vo);
	}
	
}
