package com.spring.aesook.admin.terms.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.terms.vo.ManagerRuleVO;

@Repository("managerTermsDAO")
public class ManagerRuleDAOImpl implements ManagerRuleDAO {
	
	private final static String namespace = "admin.terms.dao.ManagerTermsDAO";
	
	@Autowired
	SqlSessionTemplate sqlsSessionTemplate;

	@Override
	public void insertTerms(ManagerRuleVO vo) {
		
	}

	@Override
	public void updateTerms(ManagerRuleVO vo) {
		sqlsSessionTemplate.update(namespace+".updateTerms", vo);
	}

	@Override
	public List<ManagerRuleVO> getListTerms() {
		return sqlsSessionTemplate.selectList(namespace+".termsGetList");
	}

	@Override
	public ManagerRuleVO getTerms(String hotelsType) {
		return sqlsSessionTemplate.selectOne(namespace+".getTerms", hotelsType);
	}

}
