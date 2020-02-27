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
	
	//��������, �õ�, ������ ����(���� ���� ���� '/'���� �߶�)
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

	//���ǿ� �´� ���� ��ü ���� ���ϱ�
	@Override
	public int countHotelsList(String type, String sido, String region) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map = divide(type, sido, region);
		return memberHotelsListDAO.countHotelsList(map);
	}

	//���� ����Ʈ �ҷ�����
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

	//��ü ���� top 4
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
