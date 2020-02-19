package com.spring.aesook.client.board.controller;

import com.spring.aesook.client.board.service.MemberBoardService;
import com.spring.aesook.client.board.vo.MemberBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class MemberBoardController {

    @Autowired
    MemberBoardService memberBoardService;

    // 보드로 이동
    @RequestMapping(value = "/MemberBoard.do",method = RequestMethod.GET)
    public String moveBoard(Model model){
        return "/faq_board";
    }

    // 글쓰기 폼 이동
    @RequestMapping(value = "/write.do",method = RequestMethod.GET)
    public String moveWrite(Model model){
        return "/write";
    }

    // 글쓰기 기능
    @RequestMapping(value = "/MoveList.do",method = RequestMethod.POST)
    public String writeArticle(MemberBoardVO memberBoardVO, HttpServletRequest request){
        System.out.println(memberBoardVO.toString());

        memberBoardService.insertMemberBoard(memberBoardVO);

        return "/faq_board";
    }





}
