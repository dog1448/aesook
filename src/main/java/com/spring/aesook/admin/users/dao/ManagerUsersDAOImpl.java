package com.spring.aesook.admin.users.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.users.vo.ManagerUsersVO;

@Repository("managerUsersDAO")
public class ManagerUsersDAOImpl implements ManagerUsersDAO {

	private final static String namespace = "admin.users.dao.ManagerUsersDAO";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void modifyManagerUsers(ManagerUsersVO vo) {
		sqlSessionTemplate.update(namespace+".modifyManagerUsers", vo);
	}
	
	public void updateMemberStatus(ManagerUsersVO vo) {
		sqlSessionTemplate.update(namespace + ".updateMemberStatus", vo);
	}

	@Override
	public ManagerUsersVO getManagerUsers(ManagerUsersVO vo) {
		return sqlSessionTemplate.selectOne(namespace+".getManagerUsers", vo);
	}

	@Override
	public List<ManagerUsersVO> getManagerUsersList() {
		return sqlSessionTemplate.selectList(namespace+".getManagerUsersList");
	}

}
