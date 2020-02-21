package com.spring.aesook.client.hotels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberHotelsDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Service("memberHotelsService")
public class MemberHotelsServiceImpl implements MemberHotelsService {
	
	@Autowired
	private MemberHotelsDAO memberHotelsDAO;
	
	@Override
	public void insertHotels(MemberHotelsVO vo) {
		memberHotelsDAO.insertHotels(vo);
	}

	@Override
	public MemberHotelsVO getMyHotels(MemberVO vo) {
		return memberHotelsDAO.getMyHotels(vo);
	}
	
}
