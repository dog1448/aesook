package com.spring.aesook.admin.image.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.image.vo.ManagerBrnImageVO;

@Repository("managerImageDAO")
public class ManagerImageDAOImpl implements ManagerImageDAO {

	private final static String namespace = "admin.image.dao.ManagerImageDAO";
	
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    
	public void updateManagerImageBrn(ManagerBrnImageVO vo) {
		sqlSessionTemplate.update(namespace + ".updateBrnImageStatus", vo);
	}
}
