package com.spring.aesook.client.member.dao;


import com.spring.aesook.client.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public void insertMember(MemberVO memberVO){
        System.out.println("insertUser()..");
        sqlSessionTemplate.insert("MemberDAO.insertMember",memberVO);
    }
    
    @Override
    public int getId(MemberVO memberVO){
        System.out.println("getId()..");
        return sqlSessionTemplate.selectOne("MemberDAO.getId", memberVO);
    }
}
