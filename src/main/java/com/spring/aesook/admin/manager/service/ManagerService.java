package com.spring.aesook.admin.manager.service;

import com.spring.aesook.admin.manager.vo.ManagerVO;

public interface ManagerService {
	
	 void insertManager(ManagerVO vo);
	 void updateManager(ManagerVO vo);
	 ManagerVO getManager(ManagerVO vo);

	 //-------------------------------------------------------------------------
	 int totalUserCount();
	int totalHotelCount();
	int totalMotelCount();
	int totalHouseCount();
	int totalPensionCount();
	int totalResortCount();

}
