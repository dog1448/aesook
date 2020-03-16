package com.spring.aesook.client.alarm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.client.alarm.service.MemberAlarmService;
import com.spring.aesook.client.alarm.vo.MemberAlarmVO;
import com.spring.aesook.client.hotels.service.MemberHotelsService;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
public class MemberAlarmController {
	
	@Autowired
	private MemberAlarmService memberAlarmService;
	@Autowired
	private MemberHotelsService memberHotelsService;
	
	@RequestMapping(value="/alarm.do", method=RequestMethod.GET)
	public String moveAlarm(@RequestParam(value="status", defaultValue = "N") String status,
			HttpSession httpSession, Model model) {
		MemberVO user = (MemberVO) httpSession.getAttribute("login");
		List<MemberAlarmVO> alarmList = memberAlarmService.getMemberAlarmList(status, user);
		model.addAttribute("alarmList", alarmList);
		return "/messageBoard";
	}
	
	@RequestMapping(value="/alarmContent.do", method=RequestMethod.GET)
	public String moveAlarmContent(MemberAlarmVO vo, Model model) {
		MemberAlarmVO alarm = memberAlarmService.getMemberAlarm(vo);
		memberAlarmService.updateStatusMemberAlarm(vo);
		model.addAttribute("alarm", alarm);
		return "/messageContent";
	}
	
	@RequestMapping(value="/alarmDelete.do", method=RequestMethod.POST)
	public String deleleAlarm(MemberAlarmVO vo) {
		memberAlarmService.deleteStatusMemberAlarm(vo);
		return "/messageBoard";
	}
	
	@RequestMapping(value="/alarmWrite.do", method=RequestMethod.GET)
	public String writeAlarm( MemberAlarmVO vo, @RequestParam(value = "reply", required = false) String reply,
			Model model, HttpSession httpSession) {
		MemberVO user = (MemberVO) httpSession.getAttribute("login");
		MemberAlarmVO alarm = memberAlarmService.getMemberAlarm(vo);
		if(user != null) {
			model.addAttribute("user", user);
			model.addAttribute("alarm", alarm);
			if (reply != null) {
				if (reply.equals("Y")) {
					model.addAttribute("reply", "reply");					
				}
			}	
		} 
		return "/messageWrite";
	}
	
	@RequestMapping(value="/alarmWrite.do", method=RequestMethod.POST)
	public String sendAlarm(MemberAlarmVO vo) {
		memberAlarmService.insertManagerAlarm(vo);
		return "/messageBoard";
	}
	
	@RequestMapping(value = "/alarmInsert.do", method = RequestMethod.POST)
	public void insertMemberAlarm(MemberAlarmVO vo, @RequestParam("hotelsCode") int hotelsCode) {
		
		String hostId = memberHotelsService.getHostId(hotelsCode);
		vo.setAlarmRecieveId(hostId);
		
		memberAlarmService.insertManagerAlarm(vo);	
		
	}
}
