package com.spring.aesook.admin.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.aesook.admin.manager.vo.ManagerVO;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	// log �ɹ����� �ϳ� ����
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// login�� session ����
		HttpSession httpSession = request.getSession();
		if(httpSession.getAttribute(LOGIN) != null) {
			// log���� ��
			httpSession.removeAttribute(LOGIN);
		}
		
		return true;
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
		HttpSession httpSession = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		ManagerVO vo = (ManagerVO) modelMap.get(LOGIN);
		
		if(vo != null) {
			httpSession.setAttribute(LOGIN, vo);
			httpSession.setMaxInactiveInterval(60*60); // session ����ð� : 1H
			response.sendRedirect("index.admin");
		}
	}

	
	
}
