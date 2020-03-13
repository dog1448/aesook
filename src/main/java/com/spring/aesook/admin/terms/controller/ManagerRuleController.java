package com.spring.aesook.admin.terms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.terms.service.ManagerRuleService;
import com.spring.aesook.admin.terms.vo.ManagerRuleVO;

@Controller
public class ManagerRuleController {
	
	@Autowired
	ManagerRuleService managerTermService;

	@RequestMapping(value = "termsContent.admin", method = RequestMethod.GET)
	public String moveTermsContent(@RequestParam String hotelsType, Model model) {
		ManagerRuleVO vo = managerTermService.getTerms(hotelsType);
		model.addAttribute("terms", vo);
		return "/termsContent";
	}

	@RequestMapping(value = "termsBoard.admin", method = RequestMethod.GET)
	public String moveTermsBoard(Model model) {
		List<ManagerRuleVO> termsList = managerTermService.getListTerms();
		model.addAttribute("termsList", termsList);
		return "/termsBoard";
	}
	
	@RequestMapping(value = "updateTerms.admin", method = RequestMethod.POST)
	public String updateTerms(ManagerRuleVO vo) {
		System.out.println(vo);
		managerTermService.updateTerms(vo);
		return "redirect:termsBoard.admin";
	}
	
}