package com.spring.aesook.admin.manager.dao;

import com.spring.aesook.admin.manager.vo.ManagerStatisticsVO;
import com.spring.aesook.admin.manager.vo.ManagerVO;

import java.util.List;

public interface ManagerDAO {
	
	void insertManager(ManagerVO vo);
	void updateManager(ManagerVO vo);
	void updatePassManager(ManagerVO vo);
	ManagerVO getManager(ManagerVO vo);
	int idCheck(ManagerVO vo);

	// #Statistics(TOP)------------------------------------------
	int totalUserCount();
	int totalHotelCount();
	int totalMotelCount();
	int totalHouseCount();
	int totalPensionCount();
	int totalResortCount();

	// #Statistics(MIDDLE)------------------------------------------
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

	// #Statistics(BOTTOM)--------------------------------------------
	List<ManagerStatisticsVO> totalPrice();
}
