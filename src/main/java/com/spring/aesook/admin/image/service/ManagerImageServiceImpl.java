package com.spring.aesook.admin.image.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.admin.image.dao.ManagerImageDAO;
import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.common.file.FileService;
import com.spring.aesook.common.file.FileVO;

@Service("managerImageService")
public class ManagerImageServiceImpl implements ManagerImageService {

	@Autowired
	private ManagerImageDAO managerImageDAO;
	@Autowired
	private FileService fileService;
	
	public void insertManagerImage(MultipartHttpServletRequest files) {
		
		List<ManagerAdminImageVO> adminImageList = new ArrayList<ManagerAdminImageVO>();
		try {
			List<FileVO> fileList = fileService.uploadFiles("master", files);
			for (FileVO file : fileList) {
				ManagerAdminImageVO image = fileService.getManagerAdminImageFile(file);
				adminImageList.add(image);
			}
		} catch(Exception e) {
			for (ManagerAdminImageVO removeImage : adminImageList) {
				fileService.removeFile("master", removeImage.getAdminImageName());
			}
			e.printStackTrace();
		}
		managerImageDAO.insertManagerImageAdmin(adminImageList);
	}
	
	public void deleteManagerImage(ManagerAdminImageVO vo) {
		fileService.removeFile("master", vo.getAdminImageName());
		managerImageDAO.deleteManagerImageAdmin(vo);
	}
	
	public List<ManagerAdminImageVO> getAdminImageList() {
		return managerImageDAO.getAdminImageList();
	}

	@Override
	public ManagerAdminImageVO getLoginImage() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("LI");
		return managerImageDAO.getAdminImage(vo);
	}

	@Override
	public ManagerAdminImageVO getHomeImage() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("M");
		return managerImageDAO.getAdminImage(vo);
	}

	@Override
	public ManagerAdminImageVO getEvent1Image() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("E1");
		return managerImageDAO.getAdminImage(vo);
	}

	@Override
	public ManagerAdminImageVO getEvent2Image() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("E2");
		return managerImageDAO.getAdminImage(vo);
	}

	@Override
	public ManagerAdminImageVO getEvent3Image() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("E3");
		return managerImageDAO.getAdminImage(vo);
	}

	@Override
	public ManagerAdminImageVO getEvent4Image() {
		ManagerAdminImageVO vo = new ManagerAdminImageVO();
		vo.setAdminImageStatus("E4");
		return managerImageDAO.getAdminImage(vo);
	}

}
