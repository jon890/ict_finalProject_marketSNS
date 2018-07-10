package com.ict.market.main.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AfterLoginInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		POST ����� �ƴ� ��û���� ������ ���ͼ��͸� �������� �ʴ´�.
		if( !request.getMethod().equalsIgnoreCase("POST") ) {
			return true;
		}
		HttpSession session = request.getSession();
		System.out.println(request.getHeader("referer"));
		session.setAttribute("referer", request.getHeader("referer"));
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {	
		response.sendRedirect("/market/");
	}
}