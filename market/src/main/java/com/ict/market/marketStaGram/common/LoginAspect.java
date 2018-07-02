package com.ict.market.marketStaGram.common;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoginAspect {
	
	
//	@Pointcut("execution(* com.ict.market.marketStaGram.controller.MsgController.commentWrite(..))")
//	public void commentWrite() {
//	}
//	
//	
//	@Around("commentWrite()")
//	public Object market(ProceedingJoinPoint pjt) throws Throwable{
//		
//		HttpSession session = null;
//		HttpServletResponse resp = null;
//		
//		for(Object obj : pjt.getArgs()) {
//			if( obj instanceof HttpSession ) {
//				session = (HttpSession)obj;
//			} else if ( obj instanceof HttpServletResponse ) {
//				resp = (HttpServletResponse)obj;
//			}
//		}
//		
//		if( session.getAttribute("id") == null) {
//			resp.sendRedirect("/market/login.main");
//		}
//		
//		
//		Object result = pjt.proceed();
//		return result;
//	}
}