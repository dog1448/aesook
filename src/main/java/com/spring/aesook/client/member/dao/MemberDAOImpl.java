package com.spring.aesook.client.member.dao;


import com.spring.aesook.client.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private final static String namespace = "client.member.vo.MemberVO";
	
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertMember(MemberVO vo){
        sqlSessionTemplate.insert(namespace + ".insertMember",vo);
    }
    
    public void updatePassMember(MemberVO vo) {
    	sqlSessionTemplate.update(namespace + ".updatePassMember", vo);
    }
    
    public MemberVO getMember(MemberVO vo) {
    	return sqlSessionTemplate.selectOne(namespace +".getMember" , vo);
    }
    
    public MemberVO getFindIdMember(MemberVO vo) {
    	return sqlSessionTemplate.selectOne(namespace +".getFindIdMember", vo);
    }
    
    public int getId(MemberVO vo){
        return sqlSessionTemplate.selectOne(namespace + ".getId", vo);
    }
}
