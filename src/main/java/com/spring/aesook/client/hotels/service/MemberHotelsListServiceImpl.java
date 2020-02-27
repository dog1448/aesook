package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.aesook.client.hotels.dao.MemberHotelsListDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.vo.MemberVO;


@Service("memberHotelsListService")
public class MemberHotelsListServiceImpl implements MemberHotelsListService {

	@Autowired
	MemberHotelsListDAO memberHotelsListDAO;
	
	//숙소종류, 시도, 지역을 세팅(지역 같은 경우는 '/'별로 잘라서)
	public HashMap<Object, Object> divide (String type, String sido, String region){
		String[] array = region.split("/");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		ArrayList<String> regionList = new ArrayList<String>();
		
		for(int i = 0; i<array.length; i++) {
			regionList.add(array[i]);
		}	
		
		map.put("type",type);
		map.put("sido", sido);
		map.put("regionList", regionList);
		return map;
	}	

	//조건에 맞는 숙소 전체 개수 구하기
	@Override
	public int countHotelsList(String type, String sido, String region) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map = divide(type, sido, region);
		return memberHotelsListDAO.countHotelsList(map);
	}

	//숙소 리스트 불러오기
	@Override
	public List<MemberHotelsVO> selectHotelsList(String type, String sido, String region) {		
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map = divide(type, sido, region);		
		return memberHotelsListDAO.selectHotelsList(map);
	}

	@Override
	public List<MemberHotelsVO> selectHotelsListById(String memberId) {
		MemberVO vo = new MemberVO();
		vo.setMemberId(memberId);
		return memberHotelsListDAO.selectHotelsListById(vo);
	}

	//전체 숙소 top 4
	@Override
	public List<MemberHotelsVO> selectAccommodationTop10() {		
		return memberHotelsListDAO.selectAccommodationTop10();
	}

	@Override
	public List<MemberHotelsVO> selectAccommodationTop10ByType(String type) {
		MemberHotelsVO vo = new MemberHotelsVO();
		vo.setHotelsType(type);
		return memberHotelsListDAO.selectAccommodationTop10ByType(vo);
	}


}
