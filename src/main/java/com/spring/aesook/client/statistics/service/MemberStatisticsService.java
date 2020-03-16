package com.spring.aesook.client.statistics.service;

import java.util.HashMap;
import java.util.List;

public interface MemberStatisticsService {
	List<HashMap<Object, Object>> getTotalList(String year, String memberId);
	List<String> getRoomName(String memberId);
	List<HashMap<Object, Object>> getRoomRatio(List<String> list, String memberId);
}
