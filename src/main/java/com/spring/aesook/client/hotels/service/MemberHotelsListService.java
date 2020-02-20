package com.spring.aesook.client.hotels.service;

import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;

public interface MemberHotelsListService {	
	public int countHotelsList(String type, String sido, String region); 
	public List<MemberHotelsVO> selectHotelsList(String type,  String sido,  String region);
}
