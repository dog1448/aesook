package com.spring.aesook.admin.image.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;

public interface ManagerImageService {

	public void insertManagerImage(MultipartHttpServletRequest files);
	public void deleteManagerImage(ManagerAdminImageVO vo);
	public List<ManagerAdminImageVO> getAdminImageList();
	public ManagerAdminImageVO getLoginImage();
	public ManagerAdminImageVO getHomeImage();
	public ManagerAdminImageVO getEvent1Image();
	public ManagerAdminImageVO getEvent2Image();
	public ManagerAdminImageVO getEvent3Image();
	public ManagerAdminImageVO getEvent4Image();
}
