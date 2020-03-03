package com.spring.aesook.admin.board.dao;

import java.util.List;

import com.spring.aesook.admin.board.vo.ManagerBoardVO;

public interface ManagerBoardDAO {
	List<ManagerBoardVO> getListBoard();
	ManagerBoardVO getBoard(int boardSeq);
	void insertBoard(ManagerBoardVO vo);
	void updateBoard(ManagerBoardVO vo);
	void deleteBoard(ManagerBoardVO vo);
	
}
