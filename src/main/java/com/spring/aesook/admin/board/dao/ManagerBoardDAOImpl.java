package com.spring.aesook.admin.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.board.vo.ManagerBoardVO;

@Repository("managerBoardDAO")
public class ManagerBoardDAOImpl implements ManagerBoardDAO{

	private final static String namespace = "admin.board.dao.ManagerBoardDAO";

	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ManagerBoardVO> getListBoard() {
		return sqlSessionTemplate.selectList(namespace+".getListBoard");
	}

	@Override
	public ManagerBoardVO getBoard(int boardSeq) {
		return sqlSessionTemplate.selectOne(namespace+".getBoard",boardSeq);
	}

	@Override
	public void insertBoard(ManagerBoardVO vo) {
		sqlSessionTemplate.update(namespace+".insertBoard",vo);
	}

	@Override
	public void updateBoard(ManagerBoardVO vo) {
		sqlSessionTemplate.update(namespace+".updateBoard",vo);		
	}

	@Override
	public void deleteBoard(ManagerBoardVO vo) {
		sqlSessionTemplate.update(namespace+".deleteBoard",vo);		
	}

	@Override
	public void insertBoardReply(ManagerBoardVO vo) {
		sqlSessionTemplate.update(namespace+".insertBoardReply",vo);
	}

	@Override
	public void increaseCnt(ManagerBoardVO vo) {
		sqlSessionTemplate.update(namespace+".increaseCnt",vo);
	}
	
	
	
}
