package com.spring.aesook.client.image.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("memberUpdateHotelsRoomMainImageService")
public class MemberUpdateHotelsRoomMainImageServiceImpl implements MemberUpdateHotelsRoomMainImageService {

	@Autowired
	private MemberImageDAO  memberImageDAO;
	
	@Transactional(rollbackFor = Exception.class)
	public MemberHotelsImageVO updateHotelsRoomMainImage(MemberHotelsImageVO vo) {
		
		// 기존 'R' select
		vo.setRoomSortStatus("T");
		MemberHotelsImageVO image = memberImageDAO.getHotelsImage(vo);
		
		// 모든 roomSort 'U'
		vo.setRoomSortStatus("U");
		memberImageDAO.updateRoomStatusMemberHotelsImage(vo);
		
		// 새로운 'R' 등록
		vo.setRoomSortStatus("R");
		memberImageDAO.updateRoomStatusMemberHotelsImage(vo);
		
		if(image == null) {
			image = new MemberHotelsImageVO();
		}
		return image;
	}
	
}
