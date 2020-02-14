package com.spring.aesook.admin.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.manager.vo.ManagerVO;

@Repository("managerDAO")
public class ManagerDAOImpl implements ManagerDAO {

	private final static String namespace = "admin.manager.vo.ManagerVO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertManager(ManagerVO vo) {
		sqlSessionTemplate.insert(namespace +".insertManager", vo);
	}
	
	public ManagerVO getManager(ManagerVO vo) {
		System.out.println(vo.getAdminId());
		return sqlSessionTemplate.selectOne(namespace+".getManager",vo);
	}
	
	
	
}
