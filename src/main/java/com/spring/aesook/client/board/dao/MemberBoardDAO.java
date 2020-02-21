package com.spring.aesook.client.board.dao;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;

import java.util.List;

public interface MemberBoardDAO {
    void insertMemberBoard(MemberBoardVO memberBoardVO);
    void deleteMemberBoard(MemberBoardVO memberBoardVO);
    void updateMemberBoard(MemberBoardVO memberBoardVO);
    int getBoardCount();

    MemberBoardVO readMemberBoard(Integer BoardNo);


    List<MemberBoardVO> getMemberBoard(Criteria cri)throws Exception;
    List<MemberBoardVO> getMemberBoardFAQ()throws Exception;
    MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO);


}
