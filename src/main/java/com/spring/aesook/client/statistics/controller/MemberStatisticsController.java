package com.spring.aesook.client.statistics.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.aesook.client.statistics.service.MemberStatisticsService;

@Controller
public class MemberStatisticsController {
	
	@Autowired
	private MemberStatisticsService memberStatisticsService;
	
	@RequestMapping(value = "/getMonthlyTotalPrice.do", method = RequestMethod.POST)
	@ResponseBody
	public List<HashMap<Object, Object>> getMonthlyTotalPrice(@RequestParam("year") String year, 
			@RequestParam("memberId") String memberId){
		
		List<HashMap<Object, Object>> list = memberStatisticsService.getTotalList(year,memberId);
				
		return list;
	}
	
	@RequestMapping(value = "/statistics.do", method = RequestMethod.GET)
	public String moveImportStatistics() {
		
		return "/statisticsImport";
	}
	
	@RequestMapping(value = "/statisticsRoom.do", method = RequestMethod.GET)
	public String moveRoomStatistics() {
		
		return "/statisticsRoom";
	}
}
