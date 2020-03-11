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

    @RequestMapping(value = "/register.do", method = RequestMethod.GET)
    public String moveRegister(Model model){
        return "/register";
    }


    @RequestMapping(value = "/register.do",  method = RequestMethod.POST)
    public String insertMember(MemberVO vo, Model model){  			
    	int result = memberService.checkLoginId(vo);
    	
    	
    		if(result == 1) {
        		return "/register";
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
    	/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		model.addAttribute("url", naverAuthUrl);
    	
    	return "/login";
    }
    
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)

    public String checkLogin(MemberVO vo, Model model,HttpSession session) {//session은 지울 예정

    	MemberVO user = memberService.getMember(vo);
    	String id = vo.getMemberId();
    	String pw = vo.getMemberPass();
    	if(user == null) {
			model.addAttribute("check", "noId");
			return "/login";
		} else {
			if(user.getMemberPass() == null) {
				return "/login";
			}
			if (user.getMemberPass().equals(vo.getMemberPass())) {
				if(user.getMemberStatus().equals("R")) {
					
					return "/registerWait";
				}
				model.addAttribute("login",user);
			} else {
				model.addAttribute("check", "noPass");
				return "/login";
			}
		}

    	session.setAttribute("login", user);
		session.setAttribute("id" ,id);
		session.setAttribute("pw",pw);

    	return "redirect:home.do"; // 


    }
    
    
    @RequestMapping("/home.do")
    public String moveHome(Model model) {
    	List<MemberHotelsVO> list = memberHotelsListService.selectAccommodationTop10();
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

    @RequestMapping(value="/findId", method = RequestMethod.GET)
    public String moveFindId() {
    	return "/findId";
    }
    
    @RequestMapping(value="/findId", method = RequestMethod.POST)
    public String findId(MemberVO vo, Model model) {
    	MemberVO user = memberFindIdService.findId(vo);
    	if(user == null) {
    		model.addAttribute("check","noId");
    	} else {
    		model.addAttribute("check","findId");
    	}
    	
    	return "/login";
    }
    

    @RequestMapping(value="/findPass", method = RequestMethod.GET)
    public String moveFindPass() {
    	return "/findPass";
    }
    
    @RequestMapping(value="/findPass", method = RequestMethod.POST)
    public String findPass(MemberVO vo, Model model) {
    	MemberVO user = memberService.getMember(vo);
    	if(user == null) {
    		model.addAttribute("check","noId");
    	} else {
    		if(vo.getMemberEmail().equals(user.getMemberEmail()) && vo.getMemberName().equals(user.getMemberName())) {
    			model.addAttribute("check","findPass");
    			memberFindPassService.findPass(user);
    		} else {
    			model.addAttribute("check","noNameEmail");
    		}
    		
    	}
    	
    	return "/login";
    }
    
    //Kakao Login
    @RequestMapping(value = "/kakaoLogin.do", method = RequestMethod.GET)
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
    		session.setAttribute("login", vo);
    		return "/home";
    	} else if(result == 0) {    		
    		 memberService.insertMember(vo);
    		 session.setAttribute("login", vo);
    	} 
    	
    	return "/home";
    }
    
    //Naver Login
    @RequestMapping(value = "/naverLogin.do", method = RequestMethod.GET)
    public String naverLogin(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) 
    		throws IOException, ParseException {
    	
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// 1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json데이터
		/**
		 * apiResult json 구조 {"resultcode":"00", "message":"success",
		 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		 **/
		// 2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		// response의 name, memberId, email값 파싱
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
    		return "/home";
    	} else if(result == 0) {    		
    		 memberService.insertMember(vo);
    		 session.setAttribute("login", vo);
    	}
    	
    	return "/home";
    }

    @RequestMapping(value = "/insertRoom.do", method = RequestMethod.GET)
    public String moveInsertRoom() {
    	return "/insertRoom";
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
    	System.out.println(sessionId);
    	memberWithdrawalService.updateWithdrawal(sessionId);
    	session.invalidate();
    	return "/home";
    }
    
    @RequestMapping(value = "/memberWithdrawal.do", method = RequestMethod.GET)
    public String moveWithdrawMember() {
    	return "/memberWithdrawal";
    }
    
    //------------------------logout--------------------------------------------
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "/home";
    }
}
