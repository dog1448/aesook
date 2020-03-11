package com.spring.aesook.client.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.aesook.client.member.vo.MemberVO;

public class ClientLoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		if(httpSession.getAttribute(LOGIN) != null) {
			httpSession.removeAttribute(LOGIN);
		}
		
		return true;
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
		HttpSession httpSession = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		MemberVO vo = (MemberVO) modelMap.get(LOGIN);
		
		if(vo != null) {
			httpSession.setAttribute(LOGIN, vo);
			httpSession.setMaxInactiveInterval(3*60*60); // session ����ð� : 3H
			response.sendRedirect("home.do");
		}
	}

	
	
}
