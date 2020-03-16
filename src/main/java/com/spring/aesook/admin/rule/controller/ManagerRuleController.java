package com.spring.aesook.admin.rule.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.rule.service.ManagerRuleService;
import com.spring.aesook.admin.rule.vo.ManagerRuleVO;

@Controller
public class ManagerRuleController {
	
	@Autowired
	ManagerRuleService managerRuleService;

	@RequestMapping(value = "ruleContent.admin", method = RequestMethod.GET)
	public String moveRuleContent(@RequestParam String hotelsType, Model model) {
		ManagerRuleVO vo = managerRuleService.getRule(hotelsType);
		model.addAttribute("rule", vo);
		return "/ruleContent";
	}

	@RequestMapping(value = "ruleBoard.admin", method = RequestMethod.GET)
	public String moveRuleBoard(Model model) {
		List<ManagerRuleVO> ruleList = managerRuleService.getListRule();
		model.addAttribute("ruleList", ruleList);
		return "/ruleBoard";
	}
	
	@RequestMapping(value = "updateRule.admin", method = RequestMethod.POST)
	public String updateRule(ManagerRuleVO vo) {
		managerRuleService.updateRule(vo);
		return "redirect:ruleBoard.admin";
	}
	
}