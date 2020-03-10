package com.spring.aesook.admin.image.controller;

import java.util.List;

import org.apache.ibatis.javassist.bytecode.Mnemonic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.aesook.admin.image.service.ManagerImageService;
import com.spring.aesook.admin.image.service.ManagerImageUpdateService;
import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;

@Controller
public class MangerImageController {

	@Autowired
	private ManagerImageService managerImageService;
	@Autowired
	private ManagerImageUpdateService managerImageUpdateService;
	
	// ---------------------------------- Main Pic ----------------------------------------
	@RequestMapping("/mainPic.admin")
	public String moveMainPic(Model model) {
		List<ManagerAdminImageVO> imageList = managerImageService.getAdminImageList();
		model.addAttribute("imageList", imageList);
		for (ManagerAdminImageVO image : imageList) {
			if(image.getAdminImageStatus().equals("LI")) {
				model.addAttribute("LI", image);
				continue;
			} else if(image.getAdminImageStatus().equals("LG")) {
				model.addAttribute("LG", image);
				continue;
			}  else if(image.getAdminImageStatus().equals("M")) {
				model.addAttribute("M", image);
				continue;
			}  else if(image.getAdminImageStatus().equals("E1")) {
				model.addAttribute("E1", image);
				continue;
			}  else if(image.getAdminImageStatus().equals("E2")) {
				model.addAttribute("E2", image);
				continue;
			}  else if(image.getAdminImageStatus().equals("E3")) {
				model.addAttribute("E3", image);
				continue;
			}  else if(image.getAdminImageStatus().equals("E4")) {
				model.addAttribute("E4", image);
				continue;
			}
		}
		return "/mainPic";
	}
	
	@RequestMapping(value="/deletePic.admin", method=RequestMethod.POST)
	public String deletePic(ManagerAdminImageVO vo) {
		managerImageService.deleteManagerImage(vo);
		return "redirect:mainPic.admin";
	}
	
	@RequestMapping(value="/modifyPic.admin", method=RequestMethod.GET)
	public String modifyPic(ManagerAdminImageVO vo) {
	  managerImageUpdateService.updateAdminImage(vo);
	  return "redirect:mainPic.admin";
	}
	
	
	// ---------------------------------- Insert Pic ----------------------------------------
	@RequestMapping(value = "/insertPic.admin", method=RequestMethod.GET)
	public String moveInsertPic() {
		return "/insertPic";
	}
	
	@RequestMapping(value = "/insertPic.admin", method=RequestMethod.POST)
	public String insertPic(MultipartHttpServletRequest files) {
		managerImageService.insertManagerImage(files);
		return "redirect:mainPic.admin";
	}
}
