package com.spring.aesook.client.hotels.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.common.paging.PagingVO;

public interface MemberHotelsListDAO {
	public int countHotelsList(HashMap<Object, Object> map);
	public List<MemberHotelsVO> selectHotelsList(HashMap<Object, Object> map);
}
