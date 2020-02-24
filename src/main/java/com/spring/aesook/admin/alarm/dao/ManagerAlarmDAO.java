package com.spring.aesook.admin.alarm.dao;

import java.util.List;

import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

public interface ManagerAlarmDAO {

	public void insertManagerAlarm(ManagerAlarmVO vo);
	public void updateManaerImageBrn(ManagerAlarmVO vo);
	public List<ManagerAlarmVO> getManagerAlarmList(ManagerAlarmVO vo);
	
}
