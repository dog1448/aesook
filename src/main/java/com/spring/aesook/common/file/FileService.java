package com.spring.aesook.common.file;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FileService {

	public FileVO uploadFile(String memberId,  MultipartFile file) throws Exception;
	public List<FileVO> uploadFiles(String memberId, MultipartHttpServletRequest files) throws IOException, Exception;
	public String getFile(FileVO file);
	
}