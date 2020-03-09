package com.spring.aesook.client.image.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.file.FileService;
import com.spring.aesook.common.file.FileVO;

@Service("memberHotelsImageService")
public class MemberHotelsImageServiceImpl implements MemberHotelsImageService {	
	
	@Autowired
	private FileService fileSerivce;
	@Autowired
	private MemberImageDAO memberImageDAO;
	
	
	public void insertHotelsImage(MultipartHttpServletRequest files, MemberVO user, int hotelsCode) {
		
		List<MemberHotelsImageVO> hotelsImageList = new ArrayList<MemberHotelsImageVO>();
		
		try {
			List<FileVO> fileList = fileSerivce.uploadFiles(user.getMemberId(), files);
			for (FileVO file : fileList) {
				MemberHotelsImageVO image = fileSerivce.getMemberHotelsImageFile(file);
				image.setHotelsCode(hotelsCode);
				hotelsImageList.add(image);
			}
		} catch (IOException e) {
			for (MemberHotelsImageVO removeImage : hotelsImageList) {
				fileSerivce.removeFile(user.getMemberId(), removeImage.getHotelsImageName());
			}
			e.printStackTrace();
		} catch (Exception e) {
			for (MemberHotelsImageVO removeImage : hotelsImageList) {
				fileSerivce.removeFile(user.getMemberId(), removeImage.getHotelsImageName());
			}
			e.printStackTrace();
		}
		memberImageDAO.insertMemberHotelsImage(hotelsImageList);
		
	}
	
	public void deleteHotelsImage(List<Integer> hotelsImageNoList, List<String> hotelsImageNameList, MemberVO user) {
		
		try {
			for (String fileName : hotelsImageNameList) {
				fileSerivce.removeFile(user.getMemberId(), fileName);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		memberImageDAO.deleteHotelsImage(hotelsImageNoList);
	}
	
	public List<MemberHotelsImageVO> getHotelsImageList(MemberVO user) {
		return memberImageDAO.getHotelsImageList(user);
	}
	
}
