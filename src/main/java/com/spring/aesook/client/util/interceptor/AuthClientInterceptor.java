package com.spring.aesook.client.util.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.aesook.client.member.vo.MemberVO;

public class AuthClientInterceptor extends HandlerInterceptorAdapter {
	
	private static final String LOGIN = "login";
	boolean noLogin;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		noLogin = false;
		
		if(httpSession.getAttribute("login") == null) {
			// log Âï±â
			noLogin = true;
			request.setAttribute("noLogin", noLogin);
			RequestDispatcher rd = request.getRequestDispatcher("/login.do");
			rd.forward(request, response);
			return false;
		}
		httpSession.setMaxInactiveInterval(3*60*60);
		return true;
 	}

	

	
	
}
