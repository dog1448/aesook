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
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void updateRule(ManagerRuleVO vo) {
		sqlSessionTemplate.update(namespace+".updateRule", vo);
	}

	@Override
	public List<ManagerRuleVO> getListRule() {
		return sqlSessionTemplate.selectList(namespace+".getRuleList");
	}

	@Override
	public ManagerRuleVO getRule(String hotelsType) {
		return sqlSessionTemplate.selectOne(namespace+".getRule", hotelsType);
	}

}
