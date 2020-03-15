package com.spring.aesook.admin.terms.service;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

public interface ManagerTermsService {
	List<ManagerTermsVO> getTermsList();
	List<ManagerTermsVO> getSortedTerms(ManagerTermsVO vo);
	ManagerTermsVO getTerms(ManagerTermsVO vo);
	void updateTerms(ManagerTermsVO vo);
}
