package com.spring.aesook.client.review.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.client.review.vo.MemberReviewVO;

@Repository
public class MemberReviewDAOImpl implements MemberReviewDAO {
	
	private final static String namespace = "client.review.dao.MemberReivewDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertReview(MemberReviewVO reviewVO) {
		sqlSessionTemplate.insert(namespace + ".insertReview", reviewVO);
	}
}
