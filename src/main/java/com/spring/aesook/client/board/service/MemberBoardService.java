package com.spring.aesook.client.board.service;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;

import java.util.List;

public interface MemberBoardService {

    void insertMemberBoard(MemberBoardVO memberBoardVO);
    void deleteMemberBoard(MemberBoardVO memberBoardVO);
    void updateMemberBoard(MemberBoardVO memberBoardVO);
    MemberBoardVO readMemberBoard(Integer BoardNo);
    List<MemberBoardVO> getMemberBoard(Criteria cri) throws Exception;
    List<MemberBoardVO> getMemberBoardFAQ() throws Exception;
    List<MemberBoardVO> getMemberNoticeBoard() throws Exception;
    MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO);
    int getBoardCount();
    
    
}
