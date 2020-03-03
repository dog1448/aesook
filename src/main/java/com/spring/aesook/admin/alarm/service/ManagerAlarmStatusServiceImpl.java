package com.spring.aesook.admin.alarm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.aesook.admin.alarm.dao.ManagerAlarmDAO;
import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;
import com.spring.aesook.admin.image.dao.ManagerImageDAO;
import com.spring.aesook.admin.image.vo.ManagerBrnImageVO;

@Service("managerAlarmStatusService")
public class ManagerAlarmStatusServiceImpl implements ManagerAlarmStatusService {

	@Autowired
	private ManagerAlarmDAO managerAlarmDAO;
	@Autowired
	private ManagerImageDAO managerImageDAO;
	
	@Transactional(rollbackFor = Exception.class)
	public void successAlarm(ManagerAlarmVO vo) {
		
		// update alarm
		managerAlarmDAO.updateManaerImageBrn(vo);
		
		// alarm insert
		vo.setAlarmRecieveId(vo.getAlarmSendId());
		vo.setAlarmTitle(vo.getAlarmSendId()+"님의 사업자등록증이 등록되었습니다.");
		vo.setAlarmContents("사업자 등록증이 성공적으로 등록되었습니다.\n 이제부터 호텔등록 및 결제 서비스를 이용할 수 있습니다.");
		vo.setAlarmSendId("Admin");
		managerAlarmDAO.insertManagerAlarm(vo);
		
		// image update
		ManagerBrnImageVO image = new ManagerBrnImageVO();
		image.setBrnImageName(vo.getBrnImageName());
		image.setBrnImageStatus("S");
		System.out.println(image);
		managerImageDAO.updateManagerImageBrn(image);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public void failAlarm(ManagerAlarmVO vo) {
		// update alarm
		managerAlarmDAO.updateManaerImageBrn(vo);
		
		// alarm insert
		vo.setAlarmRecieveId(vo.getAlarmSendId());
		vo.setAlarmTitle(vo.getAlarmSendId()+"님의 사업자등록증이 거절되었습니다.");
		vo.setAlarmContents("사업자 등록증이 거절되었습니다.\n 등록증을 다시 확인해주세요.");
		vo.setAlarmSendId("Admin");
		managerAlarmDAO.insertManagerAlarm(vo);
		
		// image update
		ManagerBrnImageVO image = new ManagerBrnImageVO();
		image.setBrnImageName(vo.getBrnImageName());
		image.setBrnImageStatus("F");
		System.out.println(image);
		managerImageDAO.updateManagerImageBrn(image);
	}
	
}
