package com.spring.aesook.client.alarm.dao;

import java.util.List;

import com.spring.aesook.client.alarm.vo.MemberAlarmVO;

public interface MemberAlarmDAO {

	public void insertMemberAlarm(MemberAlarmVO vo);
	public void updateStatusMemberAlarm(MemberAlarmVO vo);
	public MemberAlarmVO getMemberAlarm(MemberAlarmVO vo);
	public List<MemberAlarmVO> getMemberAlarmList(MemberAlarmVO vo);
}
