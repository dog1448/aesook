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
		vo.setAlarmTitle(vo.getAlarmSendId()+"���� ����ڵ������ ��ϵǾ����ϴ�.");
		vo.setAlarmContents("����� ������� ���������� ��ϵǾ����ϴ�.\n �������� ȣ�ڵ�� �� ���� ���񽺸� �̿��� �� �ֽ��ϴ�.");
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
		vo.setAlarmTitle(vo.getAlarmSendId()+"���� ����ڵ������ �����Ǿ����ϴ�.");
		vo.setAlarmContents("����� ������� �����Ǿ����ϴ�.\n ������� �ٽ� Ȯ�����ּ���.");
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
