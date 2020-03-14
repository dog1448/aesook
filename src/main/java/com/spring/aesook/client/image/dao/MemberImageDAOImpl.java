package com.spring.aesook.client.image.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Repository("memberImageDAO")
public class MemberImageDAOImpl implements MemberImageDAO {
	
	private final static String namespace = "client.memberimage.dao.MemberImageDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertMemberImageBrn(MemberBrnImageVO vo) {
		sqlSessionTemplate.insert(namespace+".insertMemberBrnImage", vo);
	}
	
	public MemberBrnImageVO getMemberBrnImage(MemberVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getBrnImage", vo);
	}
	
	public void insertMemberHotelsImage(List<MemberHotelsImageVO> vo) {
		sqlSessionTemplate.insert(namespace + ".insertMemberHotelsImage", vo);
	}
	
	public void updateStatusMemberHotelsImage(MemberHotelsImageVO vo) {
		sqlSessionTemplate.update(namespace +".updateStatusMemberHotelsImage", vo);
	}
	
	public void updateRoomStatusMemberHotelsImage(MemberHotelsImageVO vo) {
		sqlSessionTemplate.update(namespace + ".updateRoomStatusMemberHotelsImage", vo);
	}
	
	public MemberHotelsImageVO getHotelsImage(MemberHotelsImageVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getHotelsImage", vo);
	}
	
	public List<MemberHotelsImageVO> getHotelsImageList(MemberVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getHotelsImageList", vo);	
	}
	
	public List<MemberHotelsImageVO> getHotelsImageList(MemberHotelsVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getHotelsImageList2", vo);	
	}
	
	public void updateRoomSort(List<MemberHotelsImageVO> vo) {
		sqlSessionTemplate.update(namespace + ".updateRoomSort", vo);
	}
	
	public void deleteHotelsImage(List<Integer> vo) {
		sqlSessionTemplate.delete(namespace +".deleteHotelsImage", vo);
	}
	
}
 