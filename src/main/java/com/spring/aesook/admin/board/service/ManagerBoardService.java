package com.spring.aesook.admin.board.service;

import java.util.List;
import com.spring.aesook.admin.board.vo.ManagerBoardVO;

public interface ManagerBoardService {
	

	
	public List<ManagerBoardVO> getListBoard();
	public ManagerBoardVO getBoard(int boardSeq);
	public void insertBoard(ManagerBoardVO vo);
	public void updateBoard(ManagerBoardVO vo);
	public void deleteBoard(ManagerBoardVO vo);
	public void insertBoardReply(ManagerBoardVO vo);
	public void increaseCnt(ManagerBoardVO vo);
}
