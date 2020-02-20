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
    memberBoardDAO.updateMemberBoard(memberBoardVO);
    }

    public MemberBoardVO readMemberBoard(Integer BoardNo) {
        return memberBoardDAO.readMemberBoard(BoardNo);
    }

    @Override
    public List<MemberBoardVO> getMemberBoard() throws Exception {
        return memberBoardDAO.getMemberBoard();
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
	public List<MemberBoardVO> getMemberBoardFAQ() throws Exception {
		return memberBoardDAO.getMemberBoardFAQ();
	}
}
