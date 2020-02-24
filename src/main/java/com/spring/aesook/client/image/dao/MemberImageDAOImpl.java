package com.spring.aesook.client.image.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.image.vo.MemberBrnImageVO;

@Repository("memberImageDAO")
public class MemberImageDAOImpl implements MemberImageDAO {
	
	private final static String namespace = "client.memberimage.dao.MemberImageDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertMemberImageBrn(MemberBrnImageVO vo) {
		sqlSessionTemplate.insert(namespace+".insertMemberBrnImage", vo);
	}
	
}
