package com.spring.aesook.client.board.service;

import com.spring.aesook.client.board.dao.MemberBoardDAO;
import com.spring.aesook.client.board.vo.MemberBoardVO;
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
    memberBoardDAO.deleteMemberBoard(memberBoardVO);
    }

    @Override
    public List<MemberBoardVO> getMemberBoard(MemberBoardVO memberBoardVO) {
        return memberBoardDAO.getMemberBoard(memberBoardVO);
    }

    @Override
    public MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO) {
        return null;
    }
}
