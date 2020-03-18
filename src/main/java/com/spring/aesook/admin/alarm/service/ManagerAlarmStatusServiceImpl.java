package com.spring.aesook.admin.alarm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.aesook.admin.alarm.dao.ManagerAlarmDAO;
import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;
import com.spring.aesook.admin.image.dao.ManagerImageDAO;
import com.spring.aesook.admin.image.vo.ManagerBrnImageVO;
import com.spring.aesook.admin.users.dao.ManagerUsersDAO;
import com.spring.aesook.admin.users.vo.ManagerUsersVO;

@Service("managerAlarmStatusService")
public class ManagerAlarmStatusServiceImpl implements ManagerAlarmStatusService {

	@Autowired
	private ManagerAlarmDAO managerAlarmDAO;
	@Autowired
	private ManagerImageDAO managerImageDAO;
	@Autowired
	private ManagerUsersDAO managerUsersDAO;
	
	@Transactional(rollbackFor = Exception.class)
	public void successAlarm(ManagerAlarmVO vo) {
		
		// update alarm
		managerAlarmDAO.updateManaerImageBrn(vo);
		
		// update member
		ManagerUsersVO user = new ManagerUsersVO();
		user.setMemberId(vo.getAlarmSendId());
		user.setMemberStatus("H");
		managerUsersDAO.updateMemberStatus(user);
		
		// alarm insert
		vo.setAlarmRecieveId(vo.getAlarmSendId());
		vo.setAlarmTitle(vo.getAlarmSendId()+"님의 사업자등록증이 등록되었습니다.");
		vo.setAlarmContents("사업자 등록증이 성공적으로 등록되었습니다.\n 이제부터 호텔등록 및 결제 서비스를 이용할 수 있습니다.\n 로그아웃 후 다시 로그인 해주세요~");
		vo.setAlarmSendId("Admin");
		managerAlarmDAO.insertManagerAlarm(vo);
		
		// image update
		ManagerBrnImageVO image = new ManagerBrnImageVO();
		image.setBrnImageName(vo.getBrnImageName());
		image.setBrnImageStatus("S");
		managerImageDAO.updateManagerImageBrn(image);
		
	}
	
	@Transactional(rollbackFor = Exception.class)
	public void failAlarm(ManagerAlarmVO vo) {
		// update alarm
		managerAlarmDAO.updateManaerImageBrn(vo);
		
		// update member
		ManagerUsersVO user = new ManagerUsersVO();
		user.setMemberId(vo.getAlarmSendId());
		user.setMemberStatus("G");
		managerUsersDAO.updateMemberStatus(user);
		
		// alarm insert
		vo.setAlarmRecieveId(vo.getAlarmSendId());
		vo.setAlarmTitle(vo.getAlarmSendId()+"님의 사업자 등록이 거절되었습니다.");
		vo.setAlarmContents("사업자 등록이 거절되었습니다.\n 등록증을 다시 확인해주세요.");
		vo.setAlarmSendId("Admin");
		managerAlarmDAO.insertManagerAlarm(vo);
		
		// image update
		ManagerBrnImageVO image = new ManagerBrnImageVO();
		image.setBrnImageName(vo.getBrnImageName());
		image.setBrnImageStatus("F");
		managerImageDAO.updateManagerImageBrn(image);
		

	}
	
}
