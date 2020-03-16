package com.spring.aesook.client.member.dao;


import com.spring.aesook.client.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private final static String namespace = "client.member.dao.MemberDAO";
	
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

	@Override
	public void updateStatusMember(MemberVO vo) {
		sqlSessionTemplate.update(namespace + ".updateStatusMember", vo);		
	}

	@Override
	public void updateInfoMember(MemberVO vo) {
		sqlSessionTemplate.update(namespace + ".updateInfoMember",vo);		
		System.out.println(vo.getMemberPhone().toString());
	}
	
	@Override
	public void updateWithdrawal(String memberId) {
		sqlSessionTemplate.update(namespace+".updateWithdrawal",memberId);
	}
}
