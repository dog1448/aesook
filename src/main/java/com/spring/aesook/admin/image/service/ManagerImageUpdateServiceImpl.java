package com.spring.aesook.admin.image.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.aesook.admin.image.dao.ManagerImageDAO;
import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;

@Service("managerImageUpdateService")
public class ManagerImageUpdateServiceImpl implements ManagerImageUpdateService {

	@Autowired
	private ManagerImageDAO managerImageDAO;
	
	public ManagerAdminImageVO updateAdminImage(ManagerAdminImageVO vo) {
		
		// before select AdminImage
		if (vo.getAdminImageStatus().equals("U")) {
			managerImageDAO.updateAdminImageStatus(vo);
			return new ManagerAdminImageVO();
		}
		ManagerAdminImageVO image = managerImageDAO.getAdminImage(vo);
		
		// update after AdminImageStatus '#{adminImageStatus}'
		managerImageDAO.updateAdminImageStatus(vo);
		
		// update before AdminImageStatus 'U'
		if (image != null) {
			image.setAdminImageStatus("U");
			managerImageDAO.updateAdminImageStatus(image);
		} else {
			image = new ManagerAdminImageVO();
		}
		return image;
	}
}
