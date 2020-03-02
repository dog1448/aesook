package com.spring.aesook.client.board.dao;

import com.spring.aesook.client.board.vo.MemberBoardVO;
import com.spring.aesook.common.pagination.Criteria;
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
    public int getBoardCount() {
        return sqlSessionTemplate.selectOne(NAMESPACE+".getBoardCount");
    }

    @Override
    public int getFAQBoardCount() {
        return sqlSessionTemplate.selectOne(NAMESPACE + ".getFAQBoardCount");
    }

    @Override
    public int getNoticeBoardCount() {
        return sqlSessionTemplate.selectOne(NAMESPACE + ".getNoticeBoardCount");
    }


    public MemberBoardVO readMemberBoard(Integer BoardNo) {
        return sqlSessionTemplate.selectOne(NAMESPACE+".readMemberBoard",BoardNo);
    }

    @Override
    public MemberBoardVO readMemberBoardFAQ(Integer BoardNo) {
        return sqlSessionTemplate.selectOne(NAMESPACE+".readMemberBoardFAQ",BoardNo);
    }

    @Override
    public MemberBoardVO readMemberBoardNotice(Integer BoardNo) {
        return sqlSessionTemplate.selectOne(NAMESPACE+".readMemberBoardNotice",BoardNo);
    }

    @Override
    public List<MemberBoardVO> getMemberBoard(Criteria cri) throws Exception {
        return sqlSessionTemplate.selectList(NAMESPACE + ".getMemberBoard",cri);
    }

    @Override
    public List<MemberBoardVO> getMemberBoardFAQ(Criteria cri) throws Exception {
        return sqlSessionTemplate.selectList(NAMESPACE + ".getMemberBoardFAQ",cri);

    }

    @Override
    public List<MemberBoardVO> getMemberNoticeBoard(Criteria cri) throws Exception {
        return sqlSessionTemplate.selectList(NAMESPACE + ".getMemberNoticeBoard",cri);

    }


    public MemberBoardVO searchMemberBoard(MemberBoardVO memberBoardVO) {
        return null;
    }
    

}
