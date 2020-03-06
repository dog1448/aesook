package com.spring.aesook.admin.manager.dao;

import com.spring.aesook.admin.manager.vo.ManagerVO;

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

}
