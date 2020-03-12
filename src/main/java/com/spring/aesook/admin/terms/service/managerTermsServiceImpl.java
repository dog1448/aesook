package com.spring.aesook.admin.terms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.terms.dao.ManagerTermsDAO;
import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

@Service("managerTermService")
public class managerTermsServiceImpl implements ManagerTermsService {
	@Autowired
	ManagerTermsDAO managerTermsDAO;
	@Override
	public void insertTerms(ManagerTermsVO vo) {
		managerTermsDAO.insertTerms(vo);
	}

	@Override
	public void updateTerms(ManagerTermsVO vo) {
		managerTermsDAO.updateTerms(vo);
	}

	@Override
	public List<ManagerTermsVO> getListTerms() {
		return managerTermsDAO.getListTerms();
	}

	@Override
	public ManagerTermsVO getTerms(String hotelsType) {
		return managerTermsDAO.getTerms(hotelsType);
	}

}
