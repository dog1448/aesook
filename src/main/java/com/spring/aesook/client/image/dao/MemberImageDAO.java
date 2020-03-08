package com.spring.aesook.client.image.dao;

import java.util.List;

import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberImageDAO {

	public void insertMemberImageBrn(MemberBrnImageVO vo);
	public void insertMemberHotelsImage(List<MemberHotelsImageVO> vo);
	public void updateStatusMemberHotelsImage(MemberHotelsImageVO vo);
	public void updateRoomStatusMemberHotelsImage(MemberHotelsImageVO vo);
	public MemberHotelsImageVO getHotelsImage(MemberHotelsImageVO vo);
	public List<MemberHotelsImageVO> getHotelsImageList(MemberVO vo);
	public void updateRoomSort(List<MemberHotelsImageVO> vo);
	public void deleteHotelsImage(List<Integer> vo);
}
