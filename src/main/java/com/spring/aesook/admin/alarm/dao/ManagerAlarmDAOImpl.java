package com.spring.aesook.admin.alarm.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.alarm.vo.ManagerAlarmVO;

@Repository("managerAlarmDAO")
public class ManagerAlarmDAOImpl implements ManagerAlarmDAO {

	private final static String namespace = "admin.alarm.dao.ManagerAlarmDAO";
	
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    
    public void insertManagerAlarm(ManagerAlarmVO vo) {
    	sqlSessionTemplate.insert(namespace+".insertManagerAlarm", vo);
    }
    
    public void updateManaerImageBrn(ManagerAlarmVO vo) {
    	sqlSessionTemplate.update(namespace+".updateStatusManagerAlarm", vo);
    }
    
    public List<ManagerAlarmVO> getManagerAlarmList(ManagerAlarmVO vo) {
    	return sqlSessionTemplate.selectList(namespace + ".getManagerAlarmList", vo);
    }
    
}
