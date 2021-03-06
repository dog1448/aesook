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

    @RequestMapping(value = "/boardQNA.do", method = RequestMethod.GET)

    public String moveBoard(Model model, Criteria cri) throws Exception {
        // QNA
        int qnaCnt = memberBoardService.getBoardCount();
        model.addAttribute("qnaCnt", qnaCnt);

        // Pagination
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(qnaCnt);
        model.addAttribute("pageMaker", pageMaker);

        // Set boardList attr
        model.addAttribute("boards", memberBoardService.getMemberBoard(cri));


        return "/memberQNABoard";
    }

    @RequestMapping(value = "/boardQNAWrite.do", method = RequestMethod.GET)
    public String moveWrite(Model model) throws Exception {
        int seq = memberBoardService.getQNABoardSeq();
        model.addAttribute("seq", seq);
        return "/memberQNAWrite";
    }

    @RequestMapping(value = "/boardQNAWrite.do", method = RequestMethod.POST)
    public String writeArticle(MemberBoardVO memberBoardVO, Model model) {
        memberBoardService.insertMemberBoard(memberBoardVO);
        return "redirect:/boardQNA.do";
    }


    @RequestMapping(value = "/boardQNARead.do", method = RequestMethod.GET)
    public String read(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoard(boardNo));
        return "/memberQNARead";
    }

    @RequestMapping(value = "/boardQNAModify.do", method = RequestMethod.GET)
    public String modifyGET(@RequestParam("boardNo") Integer boardNo, Model model) throws Exception {
        model.addAttribute("board", memberBoardService.readMemberBoard(boardNo));
        return "/modifyMemberQNABoard";
    }

    @RequestMapping(value = "/boardQNAModify.do", method = RequestMethod.POST)
    public String modify(MemberBoardVO memberBoardVO, RedirectAttributes redirectAttributes) throws Exception {
        memberBoardService.updateMemberBoard(memberBoardVO);
        redirectAttributes.addFlashAttribute("msg", "modSucess");
        return "redirect:/boardQNA.do";
    }

    @RequestMapping(value = "/boardQNADelete.do",method = RequestMethod.GET)
    public String moveQNADelete(@RequestParam("boardNo") Integer boardNo,Model model){
        model.addAttribute("board",memberBoardService.readMemberBoard(boardNo));
        return "/MemberQNABoardDelete";
    }

    @RequestMapping(value = "/boardQNADelete.do",method = RequestMethod.POST)
    public String deleteQNA(MemberBoardVO memberBoardVO){
        System.out.println(memberBoardVO.toString());
        memberBoardService.deleteMemberBoard(memberBoardVO);
        return "redirect:/boardQNA.do";
    }


    @RequestMapping(value = "/boardQNAReply.do",method = RequestMethod.GET)
    public String moveQNAReply(@RequestParam("boardNo") Integer boardNo, Model model){
        model.addAttribute("reply", memberBoardService.readMemberBoard(boardNo));
        return "/memberQNAReplyWrite";
    }

    @RequestMapping(value = "/boardQNAReply.do",method = RequestMethod.POST)
    public String QNAReplyWrite(Model model,MemberBoardVO memberBoardVO) {
        memberBoardService.insertMemberBoard(memberBoardVO);
        return "redirect:/MemberBoard.do";
    }
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







