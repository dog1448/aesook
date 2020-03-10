package com.spring.aesook.client.statistics.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.statistics.dao.MemberStatisticsDAO;

@Service("memberStatisticsService")
public class MemberStatisticsServiceImpl implements MemberStatisticsService {
	
	@Autowired
	private MemberStatisticsDAO memberStatisticsDAO;

	@Override
	public List<HashMap<Object, Object>> getTotalList(String startYear, String memberId) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		String endYear = Integer.toString((Integer.parseInt(startYear) + 1));
		startYear = startYear + "0101";
		map.put("memberId", memberId);
		map.put("startYear", startYear);		
		endYear = endYear + "0101";
		map.put("endYear", endYear);
		
		List<HashMap<Object, Object>> tmpList = new ArrayList<HashMap<Object,Object>>();
				
		
		for(int i = 1; i<=12; i++) {
			HashMap<Object, Object> tmpMap = new HashMap<Object, Object>();
			tmpMap.put("booking_date", String.valueOf(i));
			tmpMap.put("booking_total_price", 0);
			tmpList.add(i-1,tmpMap);
		}
		
		
		List<HashMap<Object, Object>> monthList = memberStatisticsDAO.getTotalPrice(map);
		
		for(int i=0; i < monthList.size(); i++) {
			for(int j=0; j<tmpList.size(); j++) {
				if(monthList.get(i).get("booking_date").equals(
						tmpList.get(j).get("booking_date"))) {
					tmpList.remove(j);
					tmpList.add(j,monthList.get(i));
					break;
				}
			}
		}
		
		System.out.println(monthList.size());
		return tmpList;
	}

}
