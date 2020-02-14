package com.spring.aesook.admin.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.manager.dao.ManagerDAO;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Service("managerLoginService")
public class ManagerLoginServiceImpl implements ManagerLoginService {
	
	@Autowired
	private ManagerDAO managerDAO;
	
	public ManagerVO checkLogin(ManagerVO vo) {
		return managerDAO.getManager(vo);
	}
	
}
