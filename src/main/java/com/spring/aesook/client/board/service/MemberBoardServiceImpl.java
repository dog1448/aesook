package com.spring.aesook.client.board.service;

import com.spring.aesook.client.board.dao.MemberBoardDAO;
import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MemberBoardService")
public class MemberBoardServiceImpl implements MemberBoardService {

    @Autowired
    MemberBoardDAO memberBoardDAO;

    @Override
    public void insertMemberBoard(MemberBoardVO memberBoardVO) {
    memberBoardDAO.insertMemberBoard(memberBoardVO);
    }

    @Override
    public void deleteMemberBoard(MemberBoardVO memberBoardVO) {
    memberBoardDAO.deleteMemberBoard(memberBoardVO);
    }

    @Override
    public void updateMemberBoard(MemberBoardVO memberBoardVO) {
    memberBoardDAO.updateMemberBoard(memberBoardVO);
    }

    public MemberBoardVO readMemberBoard(Integer BoardNo) {
        return memberBoardDAO.readMemberBoard(BoardNo);
    }

    @Override
    public MemberBoardVO readMemberBoardFAQ(Integer BoardNo) {
        return memberBoardDAO.readMemberBoardFAQ(BoardNo);
    }

    @Override
    public MemberBoardVO readMemberBoardNotice(Integer BoardNo) {
        return memberBoardDAO.readMemberBoardNotice(BoardNo);
    }

    @Override
    public List<MemberBoardVO> getMemberBoard(Criteria cri) throws Exception {
        return memberBoardDAO.getMemberBoard(cri);
    }

    @Override
    public List<MemberBoardVO> getMemberBoardFAQ(Criteria cri) throws Exception {
        return memberBoardDAO.getMemberBoardFAQ(cri);
    }

    @Override
    public List<MemberBoardVO> getMemberNoticeBoard(Criteria cri) throws Exception {
        return memberBoardDAO.getMemberNoticeBoard(cri);
    }


    @Override
    public MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO) {
        return null;
    }

    @Override
    public int getBoardCount() {
        return memberBoardDAO.getBoardCount();
    }

    @Override
    public int getFAQBoardCount() {
        return memberBoardDAO.getFAQBoardCount();
    }

    @Override
    public int getNoticeBoardCount() {
        return memberBoardDAO.getNoticeBoardCount();
    }

    @Override
    public int getQNABoardSeq() {
        return memberBoardDAO.getQNABoardSeq();
    }


}
