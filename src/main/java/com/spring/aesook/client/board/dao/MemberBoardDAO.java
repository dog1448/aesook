package com.spring.aesook.client.board.dao;

import com.spring.aesook.client.board.vo.MemberBoardVO;

import java.util.List;

public interface MemberBoardDAO {
    void insertMemberBoard(MemberBoardVO memberBoardVO);
    void deleteMemberBoard(MemberBoardVO memberBoardVO);
    void updateMemberBoard(MemberBoardVO memberBoardVO);
    int getBoardCount();

    MemberBoardVO readMemberBoard(Integer BoardNo);


    List<MemberBoardVO> getMemberBoard()throws Exception;
    List<MemberBoardVO> getMemberBoardFAQ()throws Exception;
    List<MemberBoardVO> getMemberNoticeBoard()throws Exception;
    MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO);


}
