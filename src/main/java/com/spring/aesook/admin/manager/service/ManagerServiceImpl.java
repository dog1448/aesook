package com.spring.aesook.admin.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.manager.dao.ManagerDAO;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDAO managerDAO;
	
	@Override
	public void insertManager(ManagerVO vo) {
		managerDAO.insertManager(vo);
	}

	
}
