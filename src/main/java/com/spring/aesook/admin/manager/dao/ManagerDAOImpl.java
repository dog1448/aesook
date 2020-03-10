package com.spring.aesook.admin.manager.dao;

import com.spring.aesook.admin.manager.vo.ManagerStatisticsVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.manager.vo.ManagerVO;

import java.util.List;

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


	//Statistics(TOP)---------------------------------------------------------------------------------------------------------

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


	//Statistics(MIDDLE)---------------------------------------------------------------------------------------------------------
	@Override
	public int marchReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".marchReservationCount");
	}

	@Override
	public int aprilReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".aprilReservationCount");
	}

	@Override
	public int mayReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".mayReservationCount");

	}

	@Override
	public int juneReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".juneReservationCount");

	}

	@Override
	public int julyReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".julyReservationCount");

	}

	@Override
	public int augustReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".augustReservationCount");

	}

	@Override
	public int septemberReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".septemberReservationCount");

	}

	@Override
	public int octoberReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".octoberReservationCount");

	}

	@Override
	public int novemberReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".novemberReservationCount");

	}

	@Override
	public int decemberReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".decemberReservationCount");

	}
	
	
	//Statistic(pie)
	@Override
	public int hotelReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".hotelReservationCount");
	}

	@Override
	public int motelReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".motelReservationCount");
	}

	@Override
	public int guesthouseReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".guesthouseReservationCount");
	}

	@Override
	public int resortReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".resortReservationCount");
	}

	@Override
	public int pensionReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".pensionReservationCount");
	}

	@Override
	public int allReservationCount() {
		return sqlSessionTemplate.selectOne(namespace+".allReservationCount");
	}

	@Override
	public List<ManagerStatisticsVO> totalPrice() {
		return sqlSessionTemplate.selectList(namespace+".totalPrice");
	}


}
