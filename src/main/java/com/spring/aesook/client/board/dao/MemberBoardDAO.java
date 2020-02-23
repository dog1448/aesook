package com.spring.aesook.client.board.dao;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;

import java.util.List;

public interface MemberBoardDAO {
    void insertMemberBoard(MemberBoardVO memberBoardVO);
    void deleteMemberBoard(MemberBoardVO memberBoardVO);
    void updateMemberBoard(MemberBoardVO memberBoardVO);
    int getBoardCount();
    int getFAQBoardCount();
    int getNoticeBoardCount();

    MemberBoardVO readMemberBoard(Integer BoardNo);


    List<MemberBoardVO> getMemberBoard(Criteria cri)throws Exception;
    List<MemberBoardVO> getMemberBoardFAQ(Criteria cri)throws Exception;
    List<MemberBoardVO> getMemberNoticeBoard(Criteria cri)throws Exception;
    MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO);


}
