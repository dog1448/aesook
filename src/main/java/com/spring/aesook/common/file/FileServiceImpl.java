package com.spring.aesook.common.file;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;

import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service("fileService")
public class FileServiceImpl implements FileService {

		// private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
		@Autowired
		private ServletContext context;

		public FileVO uploadFile(String memberId, MultipartFile file) throws Exception {
			String originalName = file.getOriginalFilename();
			byte[] fileData = file.getBytes();
			String extension = originalName.substring(originalName.lastIndexOf(".")+1);
			// 확장자(JPG, PNG, GIF)
			if(FileMediaType.getMediaType(extension) == null){
				return null;
			}
			String savePath = "/resources/images/" + memberId +"/";
			String realPath = context.getRealPath(savePath); 
			
			UUID uid = UUID.randomUUID();
			String saveName = uid.toString().replace("-", "") + originalName;
			makeDir(realPath);
			File target = new File(realPath, saveName);
			FileCopyUtils.copy(fileData, target);
			
			FileVO nfile = new FileVO(saveName, originalName, savePath, extension);
			return nfile;
			
		}
		
		public List<FileVO> uploadFiles(String memberId, MultipartHttpServletRequest files) throws IOException, Exception{
			
			List<MultipartFile> fileList = files.getFiles("files");
			List<FileVO> fileNames = new ArrayList<FileVO>();
			
			for (MultipartFile file : fileList) {
				FileVO test = this.uploadFile(memberId, file);
				if (test != null) {
					fileNames.add(test);					
				}
			}
			return fileNames;
		}
		
		public String getFile(FileVO file) {
			return file.getSavePath() + file.getFileName();
		}
		
 		/* 업로드 폴더 생성 */
		private void makeDir(String realPath){
			if(new File(realPath).exists()){
				return;
			}
			File dirPath = new File(realPath);
			if(!dirPath.exists()){
				dirPath.mkdir();
			}
		}
		
		/* 썸네일 이미지 생성하기 
		private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception {
			
			BufferedImage sourceImg = ImageIO.read(new File(path, fileName));
			
			BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
			
			String thumbnailName = path + File.separator + "s_" + fileName; // 썸네일 파일명
	 		
			File newFile = new File(thumbnailName);
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			ImageIO.write(destImg, formatName.toUpperCase(), newFile);
			return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
		}
		*/

	
}
