package com.ict.market.favorite.common;
import javax.inject.Named;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

import com.ict.market.favorite.dto.FavoriteDto;


@Named
@Aspect
public class XSSAspect{
		
	@Pointcut("execution(* com.ict.market.favorite.controller.FavoriteController.write(..))")
	public void write() {
		
	}
	/*@Pointcut("execution(* com.ict.human.bbs.controller.BBSController.reply(..))")
	public void reply() {
		
	}*/
	/*@Pointcut("execution(* com.ict.human.bbs.controller.BBSController.update(..))")
	public void update() {
		
	}*/
	@Around("write()")
	/*@Around("write()||reply()||update()")*/	
	public Object human(ProceedingJoinPoint pjt) throws Throwable {
		
		FavoriteDto helpArticle = null;
		
		for(Object obj: pjt.getArgs()) {
			if(obj instanceof FavoriteDto) {
				helpArticle=(FavoriteDto)obj;
			}
		}
		System.out.println("aop���� �۾�");
		helpArticle.setContent(helpArticle.getContent().replace("<","&lt;")
				.replace(">","&gt;")
				.replaceAll("\r\n","<br/>")
				.replaceAll("\u0020","&nbsp"));
		helpArticle.setTitle(helpArticle.getTitle().replace("<","&lt;").replace(">","&gt;"));
		//Controller�� �޼ҵ� ���� 
		Object object = pjt.proceed();
		//Controller�� �޼ҵ� ���� �ǰ� ���� ���� �� �ڵ� 
		return object;
	}
	

}
