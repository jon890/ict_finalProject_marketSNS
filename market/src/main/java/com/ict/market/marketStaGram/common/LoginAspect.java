package com.ict.market.marketStaGram.common;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoginAspect {
	
	
//	@Pointcut("execution(* com.ict.market.marketStaGram.controller.MsgController.commentWrite(..))")
//	public void commentWrite() {
//	}
//	
//	@Pointcut("execution(* com.ict.market.marketStaGram.controller.MsgController.like(..))")
//	public void like() {
//		
//	}
//	
//	@Pointcut("execution(* com.ict.market.marketStaGram.controller.MsgController.like(..))")
//	public void likeCancel() {
//		
//	}
//	
//	
//	@Around("commentWrite() || like()")
//	public Object market(ProceedingJoinPoint pjt) throws Throwable{
//		
//		HttpSession session = null;
//		HttpServletResponse resp = null;
//		
//		for(Object obj : pjt.getArgs()) {
//			if( obj instanceof HttpSession ) {
//				session = (HttpSession)obj;
//			}
//			
//			if( obj instanceof HttpServletResponse ) {
//				resp = (HttpServletResponse)obj;
//			}
//		}
//	
//		if( session.getAttribute("id") == null ) {
//			resp.sendRedirect("/market/login.main");
//		}
//		
//		Object result = pjt.proceed();
//		return result;
//	}
}