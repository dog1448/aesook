package com.spring.aesook.admin.terms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.terms.dao.ManagerRuleDAO;
import com.spring.aesook.admin.terms.vo.ManagerRuleVO;

@Service("managerTermService")
public class ManagerRuleServiceImpl implements ManagerRuleService {
	@Autowired
	ManagerRuleDAO managerTermsDAO;
	@Override
	public void insertTerms(ManagerRuleVO vo) {
		managerTermsDAO.getTerms(vo);
	}

	@Override
	public void updateTerms(ManagerRuleVO vo) {
		managerTermsDAO.updateTerms(vo);
	}

	@Override
	public List<ManagerRuleVO> getListTerms() {
		return managerTermsDAO.getListTerms();
	}

	@Override
	public ManagerRuleVO getTerms(String hotelsType) {
		return managerTermsDAO.getTerms(hotelsType);
	}

}
