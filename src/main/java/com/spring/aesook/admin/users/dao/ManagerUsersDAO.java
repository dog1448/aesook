package com.spring.aesook.admin.users.dao;

import java.util.List;

import com.spring.aesook.admin.users.vo.ManagerUsersVO;

public interface ManagerUsersDAO {
	void modifyManagerUsers(ManagerUsersVO vo);	
	public void updateMemberStatus(ManagerUsersVO vo);
	ManagerUsersVO getManagerUsers(ManagerUsersVO vo);
	List<ManagerUsersVO> getManagerUsersList();
}
