package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.aesook.client.hotels.dao.MemberHotelsListDAO;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;


@Service("memberHotelsListService")
public class MemberHotelsListServiceImpl implements MemberHotelsListService {

	@Autowired
	MemberHotelsListDAO memberHotelsListDAO;
	
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


	@Override
	public int countHotelsList(String type, String sido, String region) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map = divide(type, sido, region);
		return memberHotelsListDAO.countHotelsList(map);
	}

	
	@Override
	public List<MemberHotelsVO> selectHotelsList(String type, String sido, String region) {		
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map = divide(type, sido, region);		
		return memberHotelsListDAO.selectHotelsList(map);
	}


}
