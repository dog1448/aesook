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


    //-------------------------FAQ
    @RequestMapping(value = "/boardFAQ.do", method = RequestMethod.GET)
    public String moveBoardFAQ(Model model, Criteria cri) throws Exception {
        //
        int faqCnt = memberBoardService.getFAQBoardCount();
        model.addAttribute("faqCnt", faqCnt);


        // Pagination
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(faqCnt);
        model.addAttribute("pageMaker", pageMaker);

        // Set boardList attr
        model.addAttribute("boards", memberBoardService.getMemberBoardFAQ(cri));

        return "/memberFAQ";
    }

    @RequestMapping(value = "/boardFAQRead.do", method = RequestMethod.GET)
    public String readFAQ(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoardFAQ(boardNo));
        return "/memberFAQBoardRead";
    }

    //-------------------------Notice
    @RequestMapping(value = "/boardNotice.do", method = RequestMethod.GET)
    public String moveNoticeBoard(Model model, Criteria cri) throws Exception {
        //
        int noticeCnt = memberBoardService.getNoticeBoardCount();
        model.addAttribute("noticeCnt", noticeCnt);


        // Pagination
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(noticeCnt);
        model.addAttribute("pageMaker", pageMaker);

        // Set boardList attr
        model.addAttribute("boards", memberBoardService.getMemberNoticeBoard(cri));
        return "/notice_board";
    }

    @RequestMapping(value = "/boardNoticeRead.do", method = RequestMethod.GET)
    public String readNoticeboard(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoardNotice(boardNo));
        return "/notice_boardRead";
    }


}







