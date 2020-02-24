package com.spring.aesook.admin.alarm.service;

import java.util.List;

import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

public interface ManagerAlarmService {
	
	public List<ManagerAlarmVO> getManagerAlarmList(String status, ManagerAlarmVO vo);
	
}
