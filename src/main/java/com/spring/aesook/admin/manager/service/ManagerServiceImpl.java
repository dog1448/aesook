package com.spring.aesook.admin.manager.service;

import java.util.List;
import java.util.UUID;

import com.spring.aesook.admin.manager.vo.ManagerStatisticsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.manager.dao.ManagerDAO;
import com.spring.aesook.admin.manager.vo.ManagerVO;
import com.spring.aesook.common.mail.MailSender;
import com.spring.aesook.common.mail.MailVO;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDAO managerDAO;
	@Autowired
	private MailSender mailSender;
	
	
	public void insertManager(ManagerVO vo) {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		vo.setAdminPass(uuid);
		MailVO mail = new MailVO();
		mail.setMailTo(vo.getAdminEmail());
		mail.setMailSubject(vo.getAdminName()+"관리자님 가입을 축하합니다.");
		mail.setMailContent("아이디 : "+vo.getAdminId()+"\n비밀번호 : " + uuid + "입니다.\n");
		mailSender.sendMail(mail);
		
		managerDAO.insertManager(vo);
	}
	
	public void updateManager(ManagerVO vo) {
		managerDAO.updateManager(vo);
	}

	public ManagerVO getManager(ManagerVO vo) {
		return managerDAO.getManager(vo);
	}


    //Statistics(TOP)-----------------------------------------------------------------------------------------------------------------
	@Override
	public int totalUserCount() {
		return managerDAO.totalUserCount();
	}

	@Override
	public int totalHotelCount() {
		return managerDAO.totalHotelCount();
	}

	@Override
	public int totalMotelCount() {
		return managerDAO.totalMotelCount();
	}

	@Override
	public int totalHouseCount() {
		return managerDAO.totalHouseCount();
	}

	@Override
	public int totalPensionCount() {
		return managerDAO.totalPensionCount();
	}

	@Override
	public int totalResortCount() {
		return managerDAO.totalResortCount();
	}




	//Statistics(MIDDLE)--------------------------------------------------------------------------------------------------------

	@Override
	public int marchReservationCount() {
		return managerDAO.marchReservationCount();
	}

	@Override
	public int aprilReservationCount() {
		return managerDAO.aprilReservationCount();
	}

	@Override
	public int mayReservationCount() {
		return managerDAO.mayReservationCount();
	}

	@Override
	public int juneReservationCount() {
		return managerDAO.juneReservationCount();
	}

	@Override
	public int julyReservationCount() {
		return managerDAO.julyReservationCount();
	}

	@Override
	public int augustReservationCount() {
		return managerDAO.augustReservationCount();
	}

	@Override
	public int septemberReservationCount() {
		return managerDAO.septemberReservationCount();
	}

	@Override
	public int octoberReservationCount() {
		return managerDAO.octoberReservationCount();
	}

	@Override
	public int novemberReservationCount() {
		return managerDAO.novemberReservationCount();
	}

	@Override
	public int decemberReservationCount() {
		return managerDAO.decemberReservationCount();
	}

	
	//Statistic(pie)

	@Override
	public int hotelReservationCount() {
		return managerDAO.hotelReservationCount();
	}

	@Override
	public int motelReservationCount() {
		return managerDAO.motelReservationCount();
	}

	@Override
	public int guesthouseReservationCount() {
		return managerDAO.guesthouseReservationCount();
	}

	@Override
	public int resortReservationCount() {
		return managerDAO.resortReservationCount();
	}

	@Override
	public int pensionReservationCount() {
		return managerDAO.pensionReservationCount();
	}

	@Override
	public int allReservationCount() {
		return managerDAO.allReservationCount();


	@Override
	public List<ManagerStatisticsVO> totalPrice() {
		return managerDAO.totalPrice();

	}
}
