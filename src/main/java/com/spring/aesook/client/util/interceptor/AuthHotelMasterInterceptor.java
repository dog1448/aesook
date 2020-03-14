package com.spring.aesook.client.util.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.aesook.client.member.vo.MemberVO;

public class AuthHotelMasterInterceptor extends HandlerInterceptorAdapter {
	
	private static final String LOGIN = "login";
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		MemberVO user = (MemberVO) httpSession.getAttribute(LOGIN);
		if(!user.getMemberStatus().equals("H")) {
			request.setAttribute("message", "해당 권한이 없습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("/bookingList.do");
			rd.forward(request, response);
			return false;
		}
		return true;
 	}

}
