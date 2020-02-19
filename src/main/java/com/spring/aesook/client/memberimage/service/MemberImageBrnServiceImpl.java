package com.spring.aesook.client.memberimage.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spring.aesook.client.memberimage.dao.MemberImageDAO;
import com.spring.aesook.common.file.FileService;

@Service("memberImageBrnService")
public class MemberImageBrnServiceImpl implements MemberImageBrnService {

	@Autowired
	private MemberImageDAO memberImageDAO;
	@Autowired
	private FileService fileService;
	
	
	public void insertImageBrn(MultipartFile file, HttpSession httpSession) {

		
	}
	
}
