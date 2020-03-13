package com.spring.aesook.admin.rule.dao;

import java.util.List;

import com.spring.aesook.admin.rule.vo.ManagerRuleVO;

public interface ManagerRuleDAO {
	void updateRule(ManagerRuleVO vo);
	List<ManagerRuleVO> getListRule();
	ManagerRuleVO getRule(String hotelsType);
}
