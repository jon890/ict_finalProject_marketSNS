package com.ict.market.main.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class XSSRequestWrapper extends HttpServletRequestWrapper{

	public XSSRequestWrapper(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String[] getParameterValues(String name) {
		String[] values = super.getParameterValues(name);
		if(name.equals("title") || name.equals("content") || name.equals("commentContent")) {
			values[0] = values[0].replace("<","&lt;").replace(">","&gt;")
					.replaceAll("\r\n","<br/>").replaceAll("\u0020","&nbsp");
		}
		
		return values;
	}

}
