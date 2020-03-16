package com.spring.aesook.client.board.service;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;

import java.util.List;

public interface MemberBoardService {

    void insertMemberBoard(MemberBoardVO memberBoardVO);
    void deleteMemberBoard(MemberBoardVO memberBoardVO);
    void updateMemberBoard(MemberBoardVO memberBoardVO);


    MemberBoardVO readMemberBoard(Integer BoardNo);
    MemberBoardVO readMemberBoardFAQ(Integer BoardNo);
    MemberBoardVO readMemberBoardNotice(Integer BoardNo);

    List<MemberBoardVO> getMemberBoard(Criteria cri) throws Exception;
    List<MemberBoardVO> getMemberBoardFAQ(Criteria cri) throws Exception;
    List<MemberBoardVO> getMemberNoticeBoard(Criteria cri) throws Exception;

    int getBoardCount();
    int getFAQBoardCount();
    int getNoticeBoardCount();
    int getQNABoardSeq();

    MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO);

}
