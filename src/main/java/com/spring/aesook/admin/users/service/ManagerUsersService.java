package com.spring.aesook.admin.users.service;

import java.util.List;

import com.spring.aesook.admin.users.vo.ManagerUsersVO;

public interface ManagerUsersService {
	void modifyManagerUsers(ManagerUsersVO vo);
	void deleteManagerUsers(ManagerUsersVO vo);
	void disableManagerUsers(ManagerUsersVO vo);
	ManagerUsersVO getManagerUsers(ManagerUsersVO vo);
	List<ManagerUsersVO> getManagerUsersList(ManagerUsersVO vo);
}
