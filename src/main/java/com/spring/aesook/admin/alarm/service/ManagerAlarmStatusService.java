package com.spring.aesook.admin.alarm.service;

import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

public interface ManagerAlarmStatusService {

	public void successAlarm(ManagerAlarmVO vo);
	public void failAlarm(ManagerAlarmVO vo);
	
}
