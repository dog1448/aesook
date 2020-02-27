package com.spring.aesook.client.alarm.service;

import java.util.List;

import com.spring.aesook.client.alarm.vo.MemberAlarmVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberAlarmService {

	public void insertManagerAlarm(MemberAlarmVO vo);
	public void updateStatusMemberAlarm(MemberAlarmVO vo);
	public void deleteStatusMemberAlarm(MemberAlarmVO vo);
	public MemberAlarmVO getMemberAlarm(MemberAlarmVO vo);
	public List<MemberAlarmVO> getMemberAlarmList(String status, MemberVO user);
	
}
