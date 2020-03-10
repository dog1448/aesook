package com.spring.aesook.admin.image.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.admin.image.vo.ManagerBrnImageVO;

@Repository("managerImageDAO")
public class ManagerImageDAOImpl implements ManagerImageDAO {

	private final static String namespace = "admin.image.dao.ManagerImageDAO";
	
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    
	public void updateManagerImageBrn(ManagerBrnImageVO vo) {
		sqlSessionTemplate.update(namespace + ".updateBrnImageStatus", vo);
	}
	
	public void insertManagerImageAdmin(List<ManagerAdminImageVO> vo) {
		sqlSessionTemplate.insert(namespace + ".insertAdminImage", vo);
	}
	
	public void updateAdminImageStatus(ManagerAdminImageVO vo) {
		sqlSessionTemplate.update(namespace + ".updateAdminImageStatus" , vo);
	}
	
	public void deleteManagerImageAdmin(ManagerAdminImageVO vo) {
		sqlSessionTemplate.delete(namespace + ".deleteAdminImage", vo);
	}
	
	public ManagerAdminImageVO getAdminImage(ManagerAdminImageVO vo) {
		return sqlSessionTemplate.selectOne(namespace + ".getAdminImage", vo);
	}
	
	public List<ManagerAdminImageVO> getAdminImageList() {
		return sqlSessionTemplate.selectList(namespace + ".getAdminImageList");
	}
}
