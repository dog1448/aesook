package com.spring.aesook.admin.terms.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

@Repository("managerTermsDAO")
public class ManagerTermsDAOImpl implements ManagerTermsDAO {
	
	private final static String namespace = "admin.terms.dao.ManagerTermsDAO";
	
	@Autowired
	SqlSessionTemplate sqlsSessionTemplate;

	@Override
	public void insertTerms(ManagerTermsVO vo) {
		
	}

	@Override
	public void updateTerms(ManagerTermsVO vo) {
		sqlsSessionTemplate.update(namespace+".updateTerms", vo);
	}

	@Override
	public List<ManagerTermsVO> getListTerms() {
		return sqlsSessionTemplate.selectList(namespace+".termsGetList");
	}

	@Override
	public ManagerTermsVO getTerms(String hotelsType) {
		return sqlsSessionTemplate.selectOne(namespace+".getTerms", hotelsType);
	}

}
