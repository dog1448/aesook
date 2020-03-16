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
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ManagerTermsVO> getTermsList() {
		return sqlSessionTemplate.selectList(namespace + ".getTermsList");
	}
	
	@Override
	public List<ManagerTermsVO> getSortedTerms(ManagerTermsVO vo) {
		return sqlSessionTemplate.selectList(namespace + ".getSortedTerms", vo);
	}

	@Override
	public ManagerTermsVO getTerms(ManagerTermsVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getTerms", vo);
	}

	@Override
	public void updateTerms(ManagerTermsVO vo) {
		sqlSessionTemplate.update(namespace + ".updateTerms", vo);
	}

	@Override
	public List<ManagerTermsVO> getAllTerms() {
		return sqlSessionTemplate.selectList(namespace + ".getAllTerms");
	}


	
}
