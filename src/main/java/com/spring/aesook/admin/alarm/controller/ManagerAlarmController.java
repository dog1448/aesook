package com.spring.aesook.admin.alarm.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.alarm.service.ManagerAlarmService;
import com.spring.aesook.admin.alarm.service.ManagerAlarmStatusService;
import com.spring.aesook.admin.alarm.service.ManagerAlarmStatusServiceImpl;
import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

@Controller
public class ManagerAlarmController {
	
	@Autowired
	private ManagerAlarmService managerAlarmService;
	@Autowired
	private ManagerAlarmStatusService managerAlarmStatusService;
	
	@RequestMapping(value="/alarm.admin", method=RequestMethod.GET)
	public String moveAlarm(@RequestParam(value="status", defaultValue = "N") String status, ManagerAlarmVO vo, Model model) {
		List<ManagerAlarmVO> alarmList = managerAlarmService.getManagerAlarmList(status, vo);
		model.addAttribute("alarmList", alarmList);
		return "/alarm";
	}
	
	@RequestMapping(value="/alarm.admin", method=RequestMethod.POST)
	public String applyAlarm(@RequestParam("sta") String status, ManagerAlarmVO vo) {
		if (Boolean.parseBoolean(status)) {
			managerAlarmStatusService.successAlarm(vo);
		} else {
			managerAlarmStatusService.failAlarm(vo);
		}
		
		return "redirect:alarm.admin";
	}
	
}
