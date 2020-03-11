package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Repository
public class MemberRoomDAOImpl implements MemberRoomDAO {

	private final static String namespace = "client.hotels.dao.MemberRoomDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//Get Room List
	@Override
	public List<MemberRoomVO> getRoomList(int hotelsCode) {		
		return sqlSessionTemplate.selectList(namespace + ".selectRoom", hotelsCode);
	}

	//Get Accommodation
	@Override
	public MemberHotelsVO getHotel(int hotelsCode) {
		return sqlSessionTemplate.selectOne(namespace + ".getHotel", hotelsCode);
	}
	
	//Get Room Description
	@Override
	public MemberRoomVO getRoom(MemberRoomVO vo) {		
		return sqlSessionTemplate.selectOne(namespace + ".selectRoomDescription", vo);
	}

	//Insert Room
	@Override
	public void insertRoom(HashMap<Object, Object> map) {
		sqlSessionTemplate.insert(namespace + ".insertRoom", map);
	}
	//Room Name Check
	@Override
	public int roomNameCheck(MemberRoomVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".roomNameCheck", vo);
	}
	
	// getRoomSortTypeList
	public List<String> getRoomSortTypeList(MemberHotelsVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getRoomSortTypeList", vo);
	}

	@Override
	public List<MemberHotelsImageVO> getAllPic(MemberHotelsVO vo) {
		
		return sqlSessionTemplate.selectList(namespace + ".getAllPic", vo);
	}

	//객실 대표 사진
	@Override
	public List<MemberHotelsImageVO> getRoomPic(int hotelsCode) {
		return sqlSessionTemplate.selectList(namespace + ".getRoomPic", hotelsCode);
	}

	@Override
	public List<MemberHotelsImageVO> getAllRoomPic(MemberHotelsImageVO vo) {		
		return sqlSessionTemplate.selectList(namespace + ".getAllRoomPic", vo);
	}

}
