package com.spring.aesook.client.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.spring.aesook.admin.image.service.ManagerImageService;
import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.client.hotels.service.MemberHotelsListService;
import com.spring.aesook.client.hotels.vo.MemberHotelsVO;
import com.spring.aesook.client.member.service.MemberFindIdService;
import com.spring.aesook.client.member.service.MemberFindPassService;
import com.spring.aesook.client.member.service.MemberKakaoLoginService;
import com.spring.aesook.client.member.service.MemberRegisterService;
import com.spring.aesook.client.member.service.MemberService;
import com.spring.aesook.client.member.service.MemberWithdrawalService;
import com.spring.aesook.client.member.service.NaverLoginBO;
import com.spring.aesook.client.member.vo.MemberVO;

@Controller
@SessionAttributes("vo")
public class MemberController {
	
	private String apiResult = null;
	
	@Autowired
	private NaverLoginBO naverLoginBO;
    @Autowired
    private MemberRegisterService memberRegisterService;
    @Autowired
    private MemberService memberService;   
    @Autowired
    private MemberFindIdService memberFindIdService;
    @Autowired
    private MemberFindPassService memberFindPassService;
    @Autowired
    private MemberHotelsListService memberHotelsListService;
    @Autowired
    private MemberWithdrawalService memberWithdrawalService;
    @Autowired
    private MemberKakaoLoginService memberKakaoLoginService;
    @Autowired
	private ManagerImageService managerImageService;

    @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
    	
    	ManagerAdminImageVO adminImageVO = managerImageService.getLoginImage();
    	model.addAttribute("adminImageVO", adminImageVO);
    	
        return "/register";
    }


    @RequestMapping(value = "/register.do",  method = RequestMethod.POST)
    public String insertMember(MemberVO vo, Model model){  			
    	int result = memberService.checkLoginId(vo);
    	
    	
    		if(result == 1) {
        		return "redirect:register.do";
        	} else if(result == 0) {
        		
        		 memberService.insertMember(vo);
        		 memberRegisterService.sendEmailConfirm(vo);
        		 model.addAttribute("vo", vo);
        	}       
		   	
        return "/registerWait";
    }
    
    @RequestMapping(value = "/registerConfirm.do", method = RequestMethod.GET)
    public String updateStatusMember(@ModelAttribute("vo") MemberVO vo, Model model) {    	
    	
    	memberService.updateStatusMember(vo);    	
    	
    	return "/registerSuccess";
    }
    
    @RequestMapping(value = "/registerIdChk.do", method = RequestMethod.POST)
    @ResponseBody
    public int checkId(MemberVO vo){
    	int result = memberService.checkLoginId(vo);
    	return result;
    } 
        


    //-------------------------------Login-------------------------


    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String moveLogin(Model model, HttpSession session) {
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		ManagerAdminImageVO adminImageVO = managerImageService.getLoginImage();
		
		model.addAttribute("url", naverAuthUrl);
		model.addAttribute("adminImageVO", adminImageVO);
    	
    	return "/login";
    }
    
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String checkLogin(MemberVO vo, Model model,HttpSession httpSession) {

    	MemberVO user = memberService.getMember(vo);
    	if(user == null) {
			model.addAttribute("message", "해당되는 아이디가 없습니다.");
			return "/messageLogin";
		} else {
			if(user.getMemberPass() == null) {
				model.addAttribute("message", "비밀번호가 틀립니다.");
				return "/messageLogin";
			}
			if (user.getMemberPass().equals(vo.getMemberPass())) {
				if(user.getMemberStatus().equals("R")) {
					return "/registerWait";
				}
				if (httpSession.getAttribute("login") != null) {
					httpSession.removeAttribute("login");
				}
				httpSession.setAttribute("login", user);
			} else {
				model.addAttribute("message", "비밀번호가 틀립니다.");
				return "/messageLogin";
			}
		}

    	return "redirect:home.do"; // 


    }
    
    
    @RequestMapping("/home.do")
    public String moveHome(Model model) {
    	List<MemberHotelsVO> list = memberHotelsListService.selectAccommodationTop10();
    	ManagerAdminImageVO adminImageVO = managerImageService.getHomeImage();    	
    	ManagerAdminImageVO event1ImageVO = managerImageService.getEvent1Image();
    	ManagerAdminImageVO event2ImageVO = managerImageService.getEvent2Image();
    	ManagerAdminImageVO event3ImageVO = managerImageService.getEvent3Image();
    	ManagerAdminImageVO event4ImageVO = managerImageService.getEvent4Image();
    	
    	model.addAttribute("adminImageVO", adminImageVO);    	
    	model.addAttribute("event1ImageVO", event1ImageVO);    	
    	model.addAttribute("event2ImageVO", event2ImageVO);    	
    	model.addAttribute("event3ImageVO", event3ImageVO);    	
    	model.addAttribute("event4ImageVO", event4ImageVO);    	
		model.addAttribute("top10", list);
	
    	return "/home";
    }
    
    @ModelAttribute("conditionMap")
    public Map<String, String> searchConditionMap() {
    Map<String, String> conditionMap = new HashMap<String, String>();
    conditionMap.put("SUBWAY", "PATH");
    conditionMap.put("HOTEL NAME", "NAME");
    conditionMap.put("LOCATION", "ADDRESS");
    return conditionMap;
    }

    @RequestMapping(value="/findId.do", method = RequestMethod.GET)
    public String moveFindId() {
    	return "/findId";
    }
    
    @RequestMapping(value="/findId.do", method = RequestMethod.POST)
    public String findId(MemberVO vo, Model model) {
    	MemberVO user = memberFindIdService.findId(vo);
    	if(user == null) {
    		model.addAttribute("message","해당되는 아이디가 없습니다.");
    	} else {
    		model.addAttribute("message","ID가 이메일로 발송되었습니다.");
    	}
    	
    	return "/messageLogin";
    }
    

    @RequestMapping(value="/findPass.do", method = RequestMethod.GET)
    public String moveFindPass() {
    	return "/findPass";
    }
    
    @RequestMapping(value="/findPass.do", method = RequestMethod.POST)
    public String findPass(MemberVO vo, Model model) {
    	MemberVO user = memberService.getMember(vo);
    	if(user == null) {
    		model.addAttribute("message","해당되는 아이디가 없습니다.");
    	} else {
    		if(vo.getMemberEmail().equals(user.getMemberEmail()) && vo.getMemberName().equals(user.getMemberName())) {
    			model.addAttribute("message","비밀번호가 메일로 발송되었습니다.");
    			memberFindPassService.findPass(user);
    		} else {
    			model.addAttribute("message","이름 또는 이메일이 일치하지 않습니다.");
    		}
    		
    	}
    	
    	return "/messageLogin";
    }
    
    //Kakao Login
    @RequestMapping(value = "/loginKakao.do", method = RequestMethod.GET)
    public String kakaoLogin(@RequestParam("code") String code, Model model,
    		HttpSession session) {
    	String access_Token = memberKakaoLoginService.getAccessToken(code);
    	HashMap<String, String> userInfo = memberKakaoLoginService.getUserInfo(access_Token);
    	
    	MemberVO vo = new MemberVO();
    	vo.setMemberEmail(userInfo.get("email"));
    	vo.setMemberName(userInfo.get("nickname"));
    	vo.setMemberId(userInfo.get("memberId"));
    	vo.setMemberStatus("G");
    	
    	int result = memberService.checkLoginId(vo);
    	
    	if(result == 1) {
    		if(session.getAttribute("login") != null) {
    			session.removeAttribute("login");
    		}
    		session.setAttribute("login", vo);
    		return "redirect:home.do";
    	} else if(result == 0) {    		
    		 
    		 if(session.getAttribute("login") != null) {
     			session.removeAttribute("login");
     		}
    		 memberService.insertMember(vo);
    		 session.setAttribute("login", vo);
    	} 
    	
    	return "redirect:home.do";
    }
    
    //Naver Login
    @RequestMapping(value = "/loginNaver.do", method = RequestMethod.GET)
    public String naverLogin(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) 
    		throws IOException, ParseException {
    	
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		String name = (String) response_obj.get("name");
		String memberId = (String) response_obj.get("id");
		String email = (String) response_obj.get("email");
		
		MemberVO vo = new MemberVO();
    	vo.setMemberEmail(email);
    	vo.setMemberName(name);
    	vo.setMemberId(memberId);
    	vo.setMemberStatus("G");
    	
    	int result = memberService.checkLoginId(vo);
    	
    	if(result == 1) {
    		session.setAttribute("login", vo);
    		return "redirect:home.do";
    	} else if(result == 0) {    		
    		memberService.insertMember(vo);
    		session.setAttribute("login", vo);
    	}
    	
    	return "redirect:home.do";
    }
    
    //----------------------------------modifyInfo--------------------------------------------

    @RequestMapping(value = "/modifyInfo.do", method = RequestMethod.GET)
    public String moveModifyInfo(HttpSession session, Model model) {
    	MemberVO login = (MemberVO)session.getAttribute("login");
    	MemberVO user = memberService.getMember(login);
    	if(login != null) {
    		model.addAttribute("login",user);
    	}
    	return "/modify_info";
    }
    
    @RequestMapping(value = "/modifyInfo.do", method = RequestMethod.POST)
    public String modifyInfo(MemberVO vo, Model model) {
    	
    	memberService.updateInfoMember(vo);
    	
    	return "redirect:modifyInfo.do";
    }
    
    @RequestMapping(value = "/memberWithdrawal.do", method = RequestMethod.POST)
    public String withdrawMember(MemberVO vo, Model model,HttpSession session) {
    	MemberVO member = (MemberVO)session.getAttribute("user");
    	String sessionId = member.getMemberId();
    	memberWithdrawalService.updateWithdrawal(sessionId);
    	session.invalidate();
    	return "redirect:home.do";
    }
    
    @RequestMapping(value = "/memberWithdrawal.do", method = RequestMethod.GET)
    public String moveWithdrawMember() {
    	return "/memberWithdrawal";
    }
    
    //------------------------logout--------------------------------------------
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:home.do";
    }
}
