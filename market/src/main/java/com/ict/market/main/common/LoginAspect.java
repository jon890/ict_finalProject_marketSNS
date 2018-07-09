package com.ict.market.main.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoginAspect {
	
	
	@Pointcut("execution(* com.ict.market.main.controller.MainController.login(..))")
	public void login() {
	}
	
	@Around("login()")
	public Object market(ProceedingJoinPoint pjt) throws Throwable{
		return null;
	}	
}