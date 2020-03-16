package com.spring.aesook.admin.manager.service;

import java.util.HashMap;
import java.util.List;

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
	List<HashMap<Object, Object>> getTotalBooking(String startYear);
	
	//Statistics(pie)
	int hotelReservationCount();
	int motelReservationCount();
	int guesthouseReservationCount();
	int resortReservationCount();
	int pensionReservationCount();
	int allReservationCount();



	//Statistics(BOTTOM)----------------------------------------------------------------------------------
	List<HashMap<Object, Object>> getTotalList(String startYear);

}
