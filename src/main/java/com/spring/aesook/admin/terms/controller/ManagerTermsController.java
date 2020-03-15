package com.spring.aesook.admin.terms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.aesook.admin.terms.service.ManagerTermsService;
import com.spring.aesook.admin.terms.vo.ManagerTermsVO;

@Controller
public class ManagerTermsController {
	
	@Autowired
	ManagerTermsService managerTermsService;
	
	@RequestMapping(value = "/termsSort.admin", method = RequestMethod.GET)
	public String moveTermsSort(ManagerTermsVO vo, Model model) {
		List<ManagerTermsVO> termsList = managerTermsService.getTermsList();
		model.addAttribute("termsList", termsList);
		return "/termsSort";
	}

	@RequestMapping(value = "/termsBoard.admin", method = RequestMethod.GET)
	public String moveTermsBoard(ManagerTermsVO vo, Model model) {
		List<ManagerTermsVO> termsList = managerTermsService.getSortedTerms(vo);
		model.addAttribute("termsList", termsList);
		return "/termsBoard";
	}
	
	@RequestMapping(value = "/termsContent.admin", method = RequestMethod.GET)
	public String moveTermsContent(ManagerTermsVO vo, Model model) {
		vo = managerTermsService.getTerms(vo);
		model.addAttribute("terms", vo);
		return "/termsContent";
	}
	
	@RequestMapping(value = "/updateTerms.admin", method = RequestMethod.POST)
	public String updateTerms(ManagerTermsVO vo) {
		managerTermsService.updateTerms(vo);
		return "redirect:termsSort.admin";
	}
}