package com.spring.aesook.common.file;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

public interface FileService {

	public FileVO uploadFile(String memberId,  MultipartFile file) throws Exception;
	public List<FileVO> uploadFiles(String memberId, MultipartHttpServletRequest files) throws IOException, Exception;
	public String getFilePath(FileVO file);
	public MemberBrnImageVO getMemberBrnImageFile(FileVO file);
	public MemberHotelsImageVO getMemberHotelsImageFile(FileVO file);
	public ManagerAdminImageVO getManagerAdminImageFile(FileVO file);
	public void removeFile(String memberId, String fileName);
}
