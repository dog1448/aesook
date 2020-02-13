package com.spring.aesook.admin.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.manager.vo.ManagerVO;

@Repository("managerDAO")
public class ManagerDAOImpl implements ManagerDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertManager(ManagerVO vo) {
		sqlSessionTemplate.insert("admin.manager.vo.ManagerVO.insertManager", vo);
	}
	
	
	
}
