package com.spring.aesook.admin.image.dao;

import java.util.List;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.admin.image.vo.ManagerBrnImageVO;

public interface ManagerImageDAO {
	
	public void updateManagerImageBrn(ManagerBrnImageVO vo);
	public void insertManagerImageAdmin(List<ManagerAdminImageVO> vo);
	public void updateAdminImageStatus(ManagerAdminImageVO vo);
	public void deleteManagerImageAdmin(ManagerAdminImageVO vo);
	public ManagerAdminImageVO getAdminImage(ManagerAdminImageVO vo);
	public List<ManagerAdminImageVO> getAdminImageList();
}
