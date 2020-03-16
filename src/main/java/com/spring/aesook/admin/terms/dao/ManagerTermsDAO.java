package com.spring.aesook.admin.terms.dao;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

public interface ManagerTermsDAO {
	List<ManagerTermsVO> getTermsList();
	List<ManagerTermsVO> getSortedTerms(ManagerTermsVO vo);
	ManagerTermsVO getTerms(ManagerTermsVO vo);
	void updateTerms(ManagerTermsVO vo);
	List<ManagerTermsVO> getAllTerms();
}
