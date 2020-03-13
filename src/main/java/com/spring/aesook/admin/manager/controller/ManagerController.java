package com.spring.aesook.admin.manager.controller;

import java.lang.management.ManagementFactory;
import com.sun.management.OperatingSystemMXBean;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.aesook.admin.manager.service.ManagerLoginService;
import com.spring.aesook.admin.manager.service.ManagerRegisterService;
import com.spring.aesook.admin.manager.service.ManagerService;
import com.spring.aesook.admin.manager.vo.ManagerVO;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	@Autowired
	private ManagerLoginService managerLoginService;
	@Autowired
	private ManagerRegisterService managerRegisterService;
	
	
	//  --------------------------- 회원가입 ------------------------------------
	@RequestMapping(value = "/register.admin", method = RequestMethod.GET)
	public String moveRegister() {
		return "/register";
	}
	
	@RequestMapping(value = "/register.admin", method = RequestMethod.POST)
	public String insertRegister(ManagerVO vo, Model model) {
		int result = managerRegisterService.idCheck(vo);
		try {
			if(result==1) {
				return "/register";
			}else if(result==0) {
				managerService.insertManager(vo);
			}
		}catch(Exception e) {
			throw new RuntimeException();
		}
		return "/index";
	}

	@ResponseBody
	@RequestMapping(value = "/idCheck.admin", method = RequestMethod.POST)
	public int idCheck(ManagerVO vo) {
		int result = managerRegisterService.idCheck(vo);
		return result;
	}
	
	
	//  --------------------------- 로그인 ------------------------------------
	@RequestMapping(value = "/login.admin", method = RequestMethod.GET)
	public String moveLogin(ManagerVO vo) {
		return "/login";
	}
	
	@RequestMapping(value="/login.admin", method = RequestMethod.POST)
	public String checkLogin(ManagerVO vo, Model model) {
		ManagerVO user = managerService.getManager(vo);
		
		
		if(user == null) {
			model.addAttribute("check", "noId");
			return "/login";
		} else {
			if (user.getAdminPass().equals(vo.getAdminPass())) {
				model.addAttribute("login",user);
			} else {
				model.addAttribute("check", "noPass");
				return "/login";
			}
		}

		return "/index"; // 나중에 interceptor로 지울 부분( login.admin은 인터셉터가 처리 )
	}
	
	
	//  --------------------------- 비밀번호 찾기 ------------------------------------
	@RequestMapping(value="/findPassword.admin", method=RequestMethod.GET)
	public String moveFindPassword(Model model) {
		model.addAttribute("findEmail", false);
		return "/findPassword";
	}
	
	@RequestMapping(value="/findPassword.admin",  method=RequestMethod.POST)
	public String findPassword(ManagerVO vo, Model model) {
		ManagerVO user = managerService.getManager(vo);
		if(user == null) {
			model.addAttribute("check", "noId");
			model.addAttribute("findEmail", false);
			return "/findPassword";
		}
		model.addAttribute("findEmail", true);
		model.addAttribute("user", user);
		return "/findPassword";
	}
	
	@RequestMapping(value="/findSendEmail.admin" ,  method=RequestMethod.POST)
	public String sendEmail(@RequestParam("myEmail") String myEmail, ManagerVO vo, Model model) {
		if(vo.getAdminEmail().equals(myEmail)) {
			managerLoginService.sendEmailPass(vo);
			model.addAttribute("check", "sendEmail");
			return "/login";
		}
		model.addAttribute("check", "noEmail");
		model.addAttribute("findEmail", false);
		return "/findPassword";
	}
	
	// --------------------------- 로그아웃 ------------------------------------
	@RequestMapping(value="/logout.admin")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "/login";
	}
	
	
	// --------------------------- 프로파일 -------------------------------------
	@RequestMapping(value="/profile.admin", method=RequestMethod.GET)
	public String moveProfile(HttpSession httpSession, Model model) {
		ManagerVO user = (ManagerVO) httpSession.getAttribute("login");
		if(user != null) {
			model.addAttribute("user",user);
		}
		return "/profile";
	}
	
	@RequestMapping(value="/profile.admin", method=RequestMethod.POST)
	public String modifyProfile(ManagerVO vo) {
		managerService.updateManager(vo);
		return "redirect:profile.admin";
	}
	
	// --------------------------- Home -------------------------------------
	@RequestMapping(value="/index.admin", method=RequestMethod.GET)
	public String moveIndex(Model model) {
		
		// Index화면에 들어갈 DB 자료(Statistics TOP)
		model.addAttribute("guestCnt",managerService.totalHouseCount());
		model.addAttribute("hotelCnt",managerService.totalHotelCount());
		model.addAttribute("motelCnt",managerService.totalMotelCount());
		model.addAttribute("pensionCnt",managerService.totalPensionCount());
		model.addAttribute("resortCnt",managerService.totalResortCount());
		model.addAttribute("userCnt",managerService.totalUserCount());		

		//Statistic Pie
		model.addAttribute("hotelReservationCnt",managerService.hotelReservationCount());
		model.addAttribute("motelReservationCnt",managerService.motelReservationCount());
		model.addAttribute("resortReservationCnt",managerService.resortReservationCount());
		model.addAttribute("pensionReservationCnt",managerService.pensionReservationCount());
		model.addAttribute("guesthouseReservationCnt",managerService.guesthouseReservationCount());
		model.addAttribute("allReservationCnt",managerService.allReservationCount());

		return "/index";
	}
	
	//월별 수입
	@RequestMapping(value = "/getMonthlyTotalPrice.admin", method = RequestMethod.POST)
	@ResponseBody
	public List<HashMap<Object, Object>> getMonthlyTotalPrice(@RequestParam("year") String year){
		
		List<HashMap<Object, Object>> list = managerService.getTotalList(year);
				
		return list;
	}
	
	//월별 예약수
	@RequestMapping(value = "/getMonthlyTotalBooking.admin", method = RequestMethod.POST)
	@ResponseBody
	public List<HashMap<Object, Object>> getMonthlyTotalBooking(@RequestParam("year") String year){
		
		List<HashMap<Object, Object>> list = managerService.getTotalBooking(year);
				
		return list;
	}
	
	
	
	// --------------------------- Alarm -------------------------------------
	public String moveAlarm() {
		return "alarm";
	}
	
	// --------------------------- Pic -------------------------------------
	@RequestMapping(value="/pic.admin" , method=RequestMethod.GET)
	public String moveMainPic() {
		return "/modifyMain";
	}
	
	@RequestMapping(value="/pic.admin" , method=RequestMethod.POST)
	public String uploadMainPic(MultipartFile file) {
		return "/index";
	}	

	@RequestMapping(value = "/monitering.admin", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<Object, Object> monitering(){
		OperatingSystemMXBean osBean = ManagementFactory.getPlatformMXBean(OperatingSystemMXBean.class);
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		
	    String cpu = String.format("%.2f", osBean.getSystemCpuLoad() * 100);
	    double totalMemory = (double)osBean.getTotalPhysicalMemorySize()/1024/1024/1024;
	    double freeMemory = (double)osBean.getFreePhysicalMemorySize()/1024/1024/1024;
	    double memoryPercent = (totalMemory-freeMemory)/totalMemory;
	    String currentMemory = String.format("%.2f", memoryPercent*100);
	    				 
	    map.put("cpu", cpu);	    
	    map.put("Memory", currentMemory);
        
        return map;
	}
}

