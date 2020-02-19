package com.spring.aesook.client.board.dao;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberBoardDAOImpl implements MemberBoardDAO {

    private static final String NAMESPACE = "client.board.dao.MemberBoardDAO";

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    @Override
    public void insertMemberBoard(MemberBoardVO memberBoardVO) {
        sqlSessionTemplate.insert(NAMESPACE+".insertBoard",memberBoardVO);
    }

    @Override
    public void deleteMemberBoard(MemberBoardVO memberBoardVO) {
        sqlSessionTemplate.delete(NAMESPACE+"deleteMemberBoard",memberBoardVO.getBoardWriter());
    }

    @Override
    public void updateMemberBoard(MemberBoardVO memberBoardVO) {

    }

    @Override
    public List<MemberBoardVO> getMemberBoard(MemberBoardVO memberBoardVO) {
        return sqlSessionTemplate.selectList(NAMESPACE+".getMemberBoard");
    }

    @Override
    public MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO) {
        return null;
    }
}
