package com.spring.aesook.admin.manager.service;

import com.spring.aesook.admin.manager.vo.ManagerVO;

public interface ManagerService {
	
	 void insertManager(ManagerVO vo);
	 void updateManager(ManagerVO vo);
	 ManagerVO getManager(ManagerVO vo);

	 //Statistics(TOP)-------------------------------------------------------------------------
	 int totalUserCount();
	int totalHotelCount();
	int totalMotelCount();
	int totalHouseCount();
	int totalPensionCount();
	int totalResortCount();

	//Statistics(MIDDLE)-------------------------------------------------------------------------
	int marchReservationCount();
	int aprilReservationCount();
	int mayReservationCount();
	int juneReservationCount();
	int julyReservationCount();
	int augustReservationCount();
	int septemberReservationCount();
	int octoberReservationCount();
	int novemberReservationCount();
	int decemberReservationCount();
}
