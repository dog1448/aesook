package com.spring.aesook.client.hotels.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.hotels.dao.MemberHotelsListDAO;

@Service("memberHotelsListService")
public class MemberHotelsListServiceImpl implements MemberHotelsListService {

	@Autowired
	MemberHotelsListDAO memberHotelsListDAO;
	
	@Override
	public int countHotelsList(String type, String sido, String region) {
		
		String[] array = region.split("/");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		ArrayList<String> regionList = new ArrayList<String>();
		
		for(int i = 0; i<array.length; i++) {
			regionList.add(array[i]);
		}	
		
		map.put("type",type);
		map.put("sido", sido);
		map.put("regionList", regionList);
		return memberHotelsListDAO.countHotelsList(map);
	}

}
