package com.spring.aesook.admin.rule.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.rule.vo.ManagerRuleVO;

@Repository("managerRuleDAO")
public class ManagerRuleDAOImpl implements ManagerRuleDAO {
	
	private final static String namespace = "admin.rule.dao.ManagerRuleDAO";
	
	@Autowired
	SqlSessionTemplate sqlsSessionTemplate;

	@Override
	public void updateRule(ManagerRuleVO vo) {
		sqlsSessionTemplate.update(namespace+".updateRule", vo);
	}

	@Override
	public List<ManagerRuleVO> getListRule() {
		return sqlsSessionTemplate.selectList(namespace+".getRuleList");
	}

	@Override
	public ManagerRuleVO getRule(String hotelsType) {
		return sqlsSessionTemplate.selectOne(namespace+".getRule", hotelsType);
	}

}
