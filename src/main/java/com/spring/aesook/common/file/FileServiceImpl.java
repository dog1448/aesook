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

import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.image.vo.MemberHotelsImageVO;

@Service("fileService")
public class FileServiceImpl implements FileService {

		// private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
		@Autowired
		private ServletContext context;

		public FileVO uploadFile(String memberId, MultipartFile file) throws Exception {
			String originalName = file.getOriginalFilename();
			byte[] fileData = file.getBytes();
			String extension = originalName.substring(originalName.lastIndexOf(".")+1);
			// (JPG, PNG, GIF)
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
			
			FileVO nfile = new FileVO(saveName, originalName, "resources/images/" + memberId +"/", extension);
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
		
		public String getFilePath(FileVO file) {
			System.out.println(context.getRealPath("/"));
			return context.getRealPath("/") + file.getSavePath() + file.getFileName();
		}
		
 		
		private void makeDir(String realPath){
			if(new File(realPath).exists()){
				return;
			}
			File dirPath = new File(realPath);
			if(!dirPath.exists()){
				dirPath.mkdir();
			}
		}
		
		// 다시 손볼것
	     public void remove(String filePath, String voName) {
		      
		      // dirIndex에 -1이 들어오면 업로드를 처음 요청하는 상황이므로  바로 return: 메서드 종료
		      
		      if(filePath == null){
		         return;
		      }
		      
		      int dirIndex = filePath.indexOf(voName);
		      if (dirIndex == -1 ) {
		         System.out.println("업로드 첫 요청");
		         return;
		      }
		      
		      String fixedPath = context.getRealPath("/") + filePath.substring(dirIndex);
		      System.out.println("fixedPath : " + fixedPath);
		      
		      
		      File toRemoveFile = new File(fixedPath);
		      if(toRemoveFile.exists()) {
		         if(toRemoveFile.delete()) {
		            System.out.println("삭제 완료");
		         }
		      }
		      else {
		         System.out.println("경로에 파일이 없습니다.");
		      }
		      
		      
	    }
		
		public MemberBrnImageVO getMemberBrnImageFile(FileVO file) {
			MemberBrnImageVO vo = new MemberBrnImageVO();
			vo.setBrnImageName(file.getFileName());
			vo.setBrnImageOrigin(file.getOriginName());
			vo.setBrnImagePath(file.getSavePath());
			vo.setBrnImageExtension(file.getExtension());
			return vo;
		}
		
		public MemberHotelsImageVO getMemberHotelsImageFile(FileVO file) {
			MemberHotelsImageVO vo = new MemberHotelsImageVO();
			vo.setHotelsImageName(file.getFileName());
			vo.setHotelsImageOrigin(file.getOriginName());
			vo.setHotelsImagePath(file.getSavePath());
			vo.setHotelsImageExtension(file.getExtension());
			return vo;
		}
		
		/* 
		private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception {
			
			BufferedImage sourceImg = ImageIO.read(new File(path, fileName));
			
			BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
			
			String thumbnailName = path + File.separator + "s_" + fileName; // 
	 		
			File newFile = new File(thumbnailName);
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			ImageIO.write(destImg, formatName.toUpperCase(), newFile);
			return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
		}
		*/

	
}
