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


    public void insertMemberBoard(MemberBoardVO memberBoardVO) {
        sqlSessionTemplate.insert(NAMESPACE + ".insertBoard", memberBoardVO);
    }

    public void deleteMemberBoard(MemberBoardVO memberBoardVO) {
        sqlSessionTemplate.delete(NAMESPACE + ".deleteMemberBoard", memberBoardVO.getBoardWriter());
    }

    @Override
    public void updateMemberBoard(MemberBoardVO memberBoardVO) {
        sqlSessionTemplate.update(NAMESPACE + ".updateMemberBoard",memberBoardVO);
    }

    @Override
    public Integer getBoardCount(Integer BoardCnt) {
        sqlSessionTemplate.selectOne(NAMESPACE+".getBoardCount",BoardCnt);
        return BoardCnt;
    }


    public MemberBoardVO readMemberBoard(Integer BoardNo) {
        return sqlSessionTemplate.selectOne(NAMESPACE+".readMemberBoard",BoardNo);
    }

    public List<MemberBoardVO> getMemberBoard() throws Exception {
        return sqlSessionTemplate.selectList(NAMESPACE + ".getMemberBoard");
    }


    public MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO) {
        return null;
    }
    
    public List<MemberBoardVO> getMemberBoardFAQ() throws Exception {
        return sqlSessionTemplate.selectList(NAMESPACE + ".getMemberBoardFAQ");
    }
}
