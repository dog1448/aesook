package com.spring.aesook.admin.users.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.users.dao.ManagerUsersDAO;
import com.spring.aesook.admin.users.vo.ManagerUsersVO;

@Service("managerUsersService")
public class ManagerUsersServiceImpl implements ManagerUsersService {
	
	@Autowired
	ManagerUsersDAO managerUsersDAO;

	@Override
	public void modifyManagerUsers(ManagerUsersVO vo) {
		managerUsersDAO.modifyManagerUsers(vo);
	}

	@Override
	public void deleteManagerUsers(ManagerUsersVO vo) {
		managerUsersDAO.deleteManagerUsers(vo);
	}

	@Override
	public void disableManagerUsers(ManagerUsersVO vo) {
		managerUsersDAO.disableManagerUsers(vo);
	}

	@Override
	public ManagerUsersVO getManagerUsers(String memberId) {
		ManagerUsersVO vo = new ManagerUsersVO();
		vo.setMemberId(memberId);
		return managerUsersDAO.getManagerUsers(vo);
	}

	@Override
	public List<ManagerUsersVO> getManagerUsersList() {
		return managerUsersDAO.getManagerUsersList();
	}

}
