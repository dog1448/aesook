package com.spring.aesook.client.util.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthClientInterceptor extends HandlerInterceptorAdapter {
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		
		if(httpSession.getAttribute("login") == null) {
			// log 
			request.setAttribute("message", "로그인이 필요한 서비스입니다.");
			RequestDispatcher rd = request.getRequestDispatcher("/login.do");
			rd.forward(request, response);
			return false;
		}
		httpSession.setMaxInactiveInterval(3*60*60);
		return true;
 	}

	

	
	
}
