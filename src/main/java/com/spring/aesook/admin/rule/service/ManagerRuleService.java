package com.spring.aesook.admin.rule.service;

import java.util.List;

import com.spring.aesook.admin.rule.vo.ManagerRuleVO;

public interface ManagerRuleService {
	void updateRule(ManagerRuleVO vo);
	List<ManagerRuleVO> getListRule();
	ManagerRuleVO getRule(String hotelsType);
}
