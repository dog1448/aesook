package com.spring.aesook.admin.image.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;

public interface ManagerImageService {

	public void insertManagerImage(MultipartHttpServletRequest files);
	public void deleteManagerImage(ManagerAdminImageVO vo);
	public List<ManagerAdminImageVO> getAdminImageList();
	
}
