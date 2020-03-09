package com.spring.aesook.client.image.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("memberUpdateHotelsRoomMainImageService")
public class MemberUpdateHotelsRoomMainImageServiceImpl implements MemberUpdateHotelsRoomMainImageService {

	@Autowired
	private MemberImageDAO  memberImageDAO;
	
	public MemberHotelsImageVO updateHotelsRoomMainImage(MemberHotelsImageVO vo) {
		
		// ���� 'R' select
		vo.setRoomSortStatus("T");
		MemberHotelsImageVO image = memberImageDAO.getHotelsImage(vo);
		
		// ��� roomSort 'U'
		vo.setRoomSortStatus("U");
		memberImageDAO.updateRoomStatusMemberHotelsImage(vo);
		
		// ���ο� 'R' ���
		vo.setRoomSortStatus("R");
		memberImageDAO.updateRoomStatusMemberHotelsImage(vo);
		
		if(image == null) {
			image = new MemberHotelsImageVO();
		}
		return image;
	}
	
}
