package com.spring.aesook.client.statistics.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.member.vo.MemberVO;
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

	@Override
	public List<String> getRoomName(String memberId) {
		MemberVO vo = new MemberVO();
		vo.setMemberId(memberId);
		return memberStatisticsDAO.getRoomName(vo);
	}

	@Override
	public List<HashMap<Object, Object>> getRoomRatio(List<String> list, String memberId) {
		List<HashMap<Object, Object>> roomSortList = new ArrayList<HashMap<Object,Object>>();
		List<HashMap<Object, Object>> tmpList = new ArrayList<HashMap<Object,Object>>();
		
		for(String roomSort : list) {
			MemberBookingVO vo = new MemberBookingVO();
			vo.setMemberId(memberId);
			vo.setRoomSort(roomSort);
			roomSortList.add(memberStatisticsDAO.getRoomRatio(vo));
		}
		
		for(int i = 0; i<list.size(); i++) {
			HashMap<Object, Object> tmpMap = new HashMap<Object, Object>();
			tmpMap.put("room_sort", list.get(i));
			tmpMap.put("room_ratio", 0);
			tmpList.add(i,tmpMap);
		}
		
		for(int i=0; i < roomSortList.size(); i++) {
			for(int j=0; j<tmpList.size(); j++) {
				if(roomSortList.get(i).get("room_sort").equals(
						tmpList.get(j).get("room_sort"))) {
					tmpList.remove(j);
					tmpList.add(j,roomSortList.get(i));
					break;
				}
			}
		}
		
		return roomSortList;
	}

}
