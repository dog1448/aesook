package com.spring.aesook.client.image.dao;

import java.util.List;

import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface MemberImageDAO {

	public void insertMemberImageBrn(MemberBrnImageVO vo);
	public void insertMemberHotelsImage(List<MemberHotelsImageVO> vo);
}
