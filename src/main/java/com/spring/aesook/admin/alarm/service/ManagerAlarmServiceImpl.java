package com.spring.aesook.admin.alarm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.alarm.dao.ManagerAlarmDAO;
import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

@Service("managerAlarmService")
public class ManagerAlarmServiceImpl implements ManagerAlarmService {
	
	@Autowired
	private ManagerAlarmDAO managerAlarmDAO;
	
	public List<ManagerAlarmVO> getManagerAlarmList(String status, ManagerAlarmVO vo) {
		vo.setAlarmStatus(status);
		return managerAlarmDAO.getManagerAlarmList(vo);
	}
	
	public void insertManagerAlarm(ManagerAlarmVO vo) {
		
	}
	
}
