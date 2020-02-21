package com.spring.aesook.client.board.controller;

import com.spring.aesook.client.board.service.MemberBoardService;
import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;
import com.spring.aesook.common.pagination.PageMaker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MemberBoardController {

    @Autowired
    MemberBoardService memberBoardService;

    @RequestMapping(value = "/MemberBoard.do", method = RequestMethod.GET)

    public String moveBoard(Model model, Criteria cri) throws Exception {
        // Q&A
        int qnaCnt = memberBoardService.getBoardCount();
        model.addAttribute("qnaCnt",qnaCnt);
        System.out.println("Q&A BOARD COUNT ="+qnaCnt);

        // Pagination
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(qnaCnt);
        model.addAttribute("pageMaker",pageMaker);

        // Set boardList attr
        model.addAttribute("boards", memberBoardService.getMemberBoard(cri));



        return "/memberQNABoard";
    }

    @RequestMapping(value = "/write.do", method = RequestMethod.GET)
    public String moveWrite(Model model) throws Exception {
        return "/memberQNAWrite";
    }

    @RequestMapping(value = "/MoveList.do", method = RequestMethod.POST)
    public String writeArticle(MemberBoardVO memberBoardVO, HttpServletRequest request) {
        memberBoardService.insertMemberBoard(memberBoardVO);
        return "redirect:/MemberBoard.do";
    }


    @RequestMapping(value = "/BoardRead.do", method = RequestMethod.GET)
    public String read(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoard(boardNo));
        return "/memberQNARead";
    }

    @RequestMapping(value = "/BoardModify.do",method = RequestMethod.GET)
    public String modifyGET(@RequestParam("boardNo") Integer boardNo,Model model) throws Exception{
        model.addAttribute("board",memberBoardService.readMemberBoard(boardNo));
        return "/modifyMemberQNABoard";
    }

    @RequestMapping(value = "/BoardModify.do",method = RequestMethod.POST)
    public String modify(MemberBoardVO memberBoardVO , RedirectAttributes redirectAttributes) throws  Exception{
        memberBoardService.updateMemberBoard(memberBoardVO);
        redirectAttributes.addFlashAttribute("msg","modSucess");

        return "redirect:/MemberBoard.do";
    }
    
    //-------------------------FAQ
    @RequestMapping(value = "/memberFAQ.do", method = RequestMethod.GET)
    public String moveBoardFAQ(Model model) throws Exception {
        model.addAttribute("boards", memberBoardService.getMemberBoardFAQ());
        return "/memberFAQ";
    }
    @RequestMapping(value = "/FAQBoardRead.do", method = RequestMethod.GET)
    public String readFAQ(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoard(boardNo));
        return "/memberFAQBoardRead";
    }

    //-------------------------Notice
    @RequestMapping(value = "/noticeBoard.do", method = RequestMethod.GET)
    public String moveNoticeBoard(Model model) throws Exception {
        model.addAttribute("boards", memberBoardService.getMemberNoticeBoard());
        return "/notice_board";
    }
    
    @RequestMapping(value = "/noticeBoardRead.do", method = RequestMethod.GET)
    public String readNoticeboard(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoard(boardNo));
        return "/notice_boardRead";
    }





}







