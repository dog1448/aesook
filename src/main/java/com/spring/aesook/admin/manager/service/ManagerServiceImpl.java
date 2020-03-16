package com.spring.aesook.admin.manager.service;

import java.util.ArrayList;
import java.util.HashMap;
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
	public List<HashMap<Object, Object>> getTotalBooking(String startYear) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		String endYear = Integer.toString((Integer.parseInt(startYear) + 1));
		startYear = startYear + "0101";		
		map.put("startYear", startYear);		
		endYear = endYear + "0101";
		map.put("endYear", endYear);
		
		List<HashMap<Object, Object>> tmpList = new ArrayList<HashMap<Object,Object>>();
				
		
		for(int i = 1; i<=12; i++) {
			HashMap<Object, Object> tmpMap = new HashMap<Object, Object>();
			tmpMap.put("booking_date", String.valueOf(i));
			tmpMap.put("booking_count", 0);
			tmpList.add(i-1,tmpMap);
		}
		
		
		List<HashMap<Object, Object>> monthList = managerDAO.getTotalBooking(map);
		
		for(int i=0; i < monthList.size(); i++) {
			for(int j=0; j<tmpList.size(); j++) {
				if(monthList.get(i).get("booking_date").equals(
						tmpList.get(j).get("booking_date"))) {
					tmpList.remove(j);
					tmpList.add(j,monthList.get(i));
					break;
				}
			}
		}
		
		return tmpList;
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

	}

	@Override
	public List<HashMap<Object, Object>> getTotalList(String startYear) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		String endYear = Integer.toString((Integer.parseInt(startYear) + 1));
		startYear = startYear + "0101";		
		map.put("startYear", startYear);		
		endYear = endYear + "0101";
		map.put("endYear", endYear);
		
		List<HashMap<Object, Object>> tmpList = new ArrayList<HashMap<Object,Object>>();
				
		
		for(int i = 1; i<=12; i++) {
			HashMap<Object, Object> tmpMap = new HashMap<Object, Object>();
			tmpMap.put("booking_date", String.valueOf(i));
			tmpMap.put("booking_total_price", 0);
			tmpList.add(i-1,tmpMap);
		}
		
		
		List<HashMap<Object, Object>> monthList = managerDAO.getTotalPrice(map);
		
		for(int i=0; i < monthList.size(); i++) {
			for(int j=0; j<tmpList.size(); j++) {
				if(monthList.get(i).get("booking_date").equals(
						tmpList.get(j).get("booking_date"))) {
					tmpList.remove(j);
					tmpList.add(j,monthList.get(i));
					break;
				}
			}
		}
		
		return tmpList;
	}

}
