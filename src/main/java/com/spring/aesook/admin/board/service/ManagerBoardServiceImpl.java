package com.spring.aesook.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.board.dao.ManagerBoardDAO;
import com.spring.aesook.admin.board.vo.ManagerBoardVO;

@Service("managerBoardService")
public class ManagerBoardServiceImpl implements ManagerBoardService {
	
	@Autowired
	ManagerBoardDAO managerBoardDAO;

	@Override
	public List<ManagerBoardVO> getListBoard() {
		return managerBoardDAO.getListBoard();
	}

	@Override
	public ManagerBoardVO getBoard(int boardSeq) {
		return managerBoardDAO.getBoard(boardSeq);
	}

	@Override
	public void insertBoard(ManagerBoardVO vo) {
		managerBoardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(ManagerBoardVO vo) {
		managerBoardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(ManagerBoardVO vo) {
		managerBoardDAO.deleteBoard(vo);
	}

	@Override
	public void insertBoardReply(ManagerBoardVO vo) {
		managerBoardDAO.insertBoardReply(vo);
	}

	@Override
	public void increaseCnt(ManagerBoardVO vo) {
		managerBoardDAO.increaseCnt(vo);
	}

}
