package com.spring.aesook.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.spring.aesook.admin.board.service.ManagerBoardService;
import com.spring.aesook.admin.board.vo.ManagerBoardVO;

@Controller
public class ManagerBoardController {
	
	@Autowired
	ManagerBoardService managerBoardService;
	
	@RequestMapping(value = "boardList.admin", method = RequestMethod.GET)
	public String moveBoardList(Model model) {
		List<ManagerBoardVO> boardList = managerBoardService.getListBoard();
		model.addAttribute("boardList",boardList);
		return "/boardList";
	}
	
	@RequestMapping(value = "boardWrite.admin", method = RequestMethod.GET)
	public String moveBoardContent() {
		return "/boardContent";
	}
	
	@RequestMapping(value = "insertBoard.admin", method =RequestMethod.POST)
	public String insertAdminBoard(ManagerBoardVO vo) {
		managerBoardService.insertBoard(vo);
		return"redirect:boardList.admin";
	}
	
	@RequestMapping(value = "boardModify.admin", method = RequestMethod.GET)
	public String moveAdminBoardModify(@RequestParam Integer boardSeq, Model model) {
		ManagerBoardVO vo = managerBoardService.getBoard(boardSeq);
		managerBoardService.increaseCnt(vo);
		model.addAttribute("board",vo);
		return "/boardModify";
	}
	
	@RequestMapping(value = "updateBoard.admin", method = RequestMethod.POST)
	public String updateAdminBoard(ManagerBoardVO vo) {
		managerBoardService.updateBoard(vo);
		return "redirect:boardList.admin";
	}

    @RequestMapping(value = "moveAdminReply.admin",method = RequestMethod.GET)
	public String moveAdminBoardReply(@RequestParam("BoardSeq") Integer boardSeq, Model model) {
		model.addAttribute("reply", managerBoardService.getBoard(boardSeq));
		return "/boardReply";
	}
    
    @RequestMapping(value="insertBoardReply.admin", method=RequestMethod.POST)
    public String insertAdminBoardReply(ManagerBoardVO vo) {
    	managerBoardService.insertBoardReply(vo);
    	return "redirect:boardList.admin";
    }
    
    @RequestMapping(value = "deleteAdminBoard.admin", method = RequestMethod.POST)
    public String deleteAdminBoard(ManagerBoardVO vo) {
    	managerBoardService.deleteBoard(vo);
    	return "redirect:boardList.admin"; 
    }
	
}
