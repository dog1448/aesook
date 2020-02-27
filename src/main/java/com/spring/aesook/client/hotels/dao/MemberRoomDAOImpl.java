package com.spring.aesook.client.hotels.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;

@Repository
public class MemberRoomDAOImpl implements MemberRoomDAO {

	private final static String namespace = "client.hotels.dao.MemberRoomDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//�� ��� ��������
	@Override
	public List<MemberRoomVO> getRoomList(int hotelsCode) {		
		return sqlSessionTemplate.selectList(namespace + ".selectRoom", hotelsCode);
	}

	// ���� ȭ�鿡 �� ���� ���� ��������
	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return sqlSessionTemplate.selectOne(namespace + ".getHotel", hotelsCode);
	}
	
	//�� �ϳ��� ���� ��������
	@Override
	public MemberRoomVO getRoom(MemberRoomVO vo) {		
		return sqlSessionTemplate.selectOne(namespace + ".selectRoomDescription", vo);
	}

	@Override
	public void insertRoom(MemberRoomVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertRoom", vo);
	}

	@Override
	public int roomNameCheck(MemberRoomVO vo) {
		
		return sqlSessionTemplate.selectOne(namespace + ".roomNameCheck", vo);
	}

}
