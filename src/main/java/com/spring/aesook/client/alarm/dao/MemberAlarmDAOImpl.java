package com.spring.aesook.client.alarm.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.alarm.vo.MemberAlarmVO;

@Repository("memberAlarmDAO")
public class MemberAlarmDAOImpl implements MemberAlarmDAO {

	private final static String namespace = "client.memberalarm.dao.MemberAlarmDAO";
	
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    
    public void insertMemberAlarm(MemberAlarmVO vo) {
    	sqlSessionTemplate.insert(namespace + ".insertMemberAlarm", vo);
    }
    
}
