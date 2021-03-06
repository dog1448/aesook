package com.spring.aesook.admin.users.service;

import java.util.List;

import com.spring.aesook.admin.users.vo.ManagerUsersVO;

public interface ManagerUsersService {
	void modifyManagerUsers(ManagerUsersVO vo);	
	ManagerUsersVO getManagerUsers(String memberId);
	List<ManagerUsersVO> getManagerUsersList();
}
