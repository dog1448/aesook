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

	@Override
	public void deleteManagerUsers(ManagerUsersVO vo) {
		sqlSessionTemplate.delete(namespace+".deleteManagerUsers", vo);
	}

	@Override
	public void disableManagerUsers(ManagerUsersVO vo) {
		sqlSessionTemplate.update(namespace+".disableManagerUsers", vo);
	}

	@Override
	public ManagerUsersVO getManagerUsers(ManagerUsersVO vo) {
		return sqlSessionTemplate.selectOne(namespace+".getManagerUsers", vo);
	}

	@Override
	public List<ManagerUsersVO> getManagerUsersList(ManagerUsersVO vo) {
		return sqlSessionTemplate.selectList(namespace+".getManagerUsersList", vo);
	}

}