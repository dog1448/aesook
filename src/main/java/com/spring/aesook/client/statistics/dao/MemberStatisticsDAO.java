package com.spring.aesook.client.statistics.dao;

import java.util.HashMap;
import java.util.List;

public interface MemberStatisticsDAO {
	List<HashMap<Object, Object>> getTotalPrice(HashMap<Object, Object> map);
}
