package com.spring.aesook.admin.terms.dao;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerRuleVO;

public interface ManagerRuleDAO {
	void selectRuleList(ManagerRuleVO vo);
	void updateTerms(ManagerRuleVO vo);
	List<ManagerRuleVO> getListTerms();
	ManagerRuleVO getTerms(String hotelsType);
	void insertTerms(ManagerRuleVO vo);
}
