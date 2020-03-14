package com.spring.aesook.admin.terms.dao;

import java.util.List;

import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

public interface ManagerTermsDAO {
	void insertTerms(ManagerTermsVO vo);
	void updateTerms(ManagerTermsVO vo);
	List<ManagerTermsVO> getListTerms();
	ManagerTermsVO getTerms(String hotelsType);
}
