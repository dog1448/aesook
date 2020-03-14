package com.spring.aesook.admin.rule.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.rule.dao.ManagerRuleDAO;
import com.spring.aesook.admin.rule.vo.ManagerRuleVO;

@Service("managerRuleService")
public class ManagerRuleServiceImpl implements ManagerRuleService {
	@Autowired
	ManagerRuleDAO managerRuleDAO;


	@Override
	public void updateRule(ManagerRuleVO vo) {
		managerRuleDAO.updateRule(vo);
	}

	@Override
	public List<ManagerRuleVO> getListRule() {
		return managerRuleDAO.getListRule();
	}

	@Override
	public ManagerRuleVO getRule(String hotelsType) {
		return managerRuleDAO.getRule(hotelsType);
	}

}
