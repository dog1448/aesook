package com.spring.aesook.client.alarm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.client.alarm.dao.MemberAlarmDAO;
import com.spring.aesook.client.alarm.vo.MemberAlarmVO;
import com.spring.aesook.client.member.vo.MemberVO;

@Service("memberAlarmService")
public class MemberAlarmServiceImpl implements MemberAlarmService {
	
	@Autowired
	private MemberAlarmDAO memberAlarmDAO;

	public void insertManagerAlarm(MemberAlarmVO vo) {
		memberAlarmDAO.insertMemberAlarm(vo);
	}
	
	public void updateStatusMemberAlarm(MemberAlarmVO vo) {
		vo.setAlarmStatus("Y");
		memberAlarmDAO.updateStatusMemberAlarm(vo);
	}
	
	public void deleteStatusMemberAlarm(MemberAlarmVO vo) {
		vo.setAlarmStatus("D");
		memberAlarmDAO.updateStatusMemberAlarm(vo);
	}
	
	public MemberAlarmVO getMemberAlarm(MemberAlarmVO vo) {
		return memberAlarmDAO.getMemberAlarm(vo);
	}
	
	
	public List<MemberAlarmVO> getMemberAlarmList(String status, MemberVO user) {
		
		MemberAlarmVO vo = new MemberAlarmVO();
		vo.setAlarmStatus(status);
		vo.setAlarmRecieveId(user.getMemberId());
		return memberAlarmDAO.getMemberAlarmList(vo);
	}
	
}
