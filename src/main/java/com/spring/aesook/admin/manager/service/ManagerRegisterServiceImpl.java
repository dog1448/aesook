package com.spring.aesook.admin.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.manager.dao.ManagerDAO;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Service("ManegerRegisterService")
public class ManagerRegisterServiceImpl implements ManagerRegisterService {
	
	@Autowired
	private ManagerDAO managerDAO;
	
	@Override
	public int idCheck(ManagerVO vo) {
		System.out.println("service");
		int result = managerDAO.idCheck(vo);
		return result;
	}

}
