package com.spring.aesook.admin.terms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.terms.dao.ManagerTermsDAO;
import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

@Service("managerTermsService")
public class ManagerTermsServiceImpl implements ManagerTermsService {
	
	@Autowired
	private ManagerTermsDAO managerTermsDAO;
	
	@Override
	public List<ManagerTermsVO> getTermsList() {
		return managerTermsDAO.getTermsList(); 
	}

	@Override
	public List<ManagerTermsVO> getSortedTerms(ManagerTermsVO vo) {
		return managerTermsDAO.getSortedTerms(vo);
	}

	@Override
	public ManagerTermsVO getTerms(ManagerTermsVO vo) {
		return managerTermsDAO.getTerms(vo);
	}

	@Override
	public void updateTerms(ManagerTermsVO vo) {
		managerTermsDAO.updateTerms(vo);
	}

	
}
