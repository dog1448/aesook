package com.spring.aesook.admin.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.manager.vo.ManagerVO;

@Repository("managerDAO")
public class ManagerDAOImpl implements ManagerDAO {

	private final static String namespace = "admin.manager.dao.ManagerDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertManager(ManagerVO vo) {
		sqlSessionTemplate.insert(namespace + ".insertManager", vo);
	}
	
	public void updateManager(ManagerVO vo) {
		sqlSessionTemplate.update(namespace + ".updateManager", vo);
	}
	
	public void updatePassManager(ManagerVO vo) {
		sqlSessionTemplate.update(namespace + ".updatePassManager",vo);
	}
	
	public ManagerVO getManager(ManagerVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getManager",vo);
	}

	@Override
	public int idCheck(ManagerVO vo) {
		System.out.println(vo);
		int result = sqlSessionTemplate.selectOne(namespace + ".idCheck", vo);
		return result;
	}
//---------------------------------------------------------------------------------------------------------

	@Override
	public int totalUserCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalUserCount");
	}

	@Override
	public int totalHotelCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalHotelCount");
	}

	@Override
	public int totalMotelCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalMotelCount");
	}

	@Override
	public int totalHouseCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalHouseCount");
	}

	@Override
	public int totalPensionCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalPensionCount");
	}

	@Override
	public int totalResortCount() {
		return sqlSessionTemplate.selectOne(namespace+".totalResortCount");
	}


}
