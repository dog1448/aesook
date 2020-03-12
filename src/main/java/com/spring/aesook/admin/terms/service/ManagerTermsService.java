package com.spring.aesook.admin.terms.service;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

public interface ManagerTermsService {
	void insertTerms(ManagerTermsVO vo);
	void updateTerms(ManagerTermsVO vo);
	List<ManagerTermsVO> getListTerms();
	ManagerTermsVO getTerms(String hotelsType);
}
