package com.spring.aesook.admin.terms.service;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerRuleVO;

public interface ManagerRuleService {
	void insertTerms(ManagerRuleVO vo);
	void updateTerms(ManagerRuleVO vo);
	List<ManagerRuleVO> getListTerms();
	ManagerRuleVO getTerms(String hotelsType);
}
