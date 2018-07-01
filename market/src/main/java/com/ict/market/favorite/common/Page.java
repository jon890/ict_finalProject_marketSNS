package com.ict.market.favorite.common;

import java.util.HashMap;

import org.springframework.stereotype.Component;

@Component
public class Page {
	//startRow = �ش��������� ���۹�ȣ  endRow = �ش��������� ����ȣ
	private int startRow,endRow;
	private StringBuffer sb;
	//synchronize ����ȭ -> ���� ������� �������� �� ������� ó���ؾ��ϱ� ������ 
	public synchronized HashMap<String,String> paging(int pageNum,int totalCount,int pageSize, int pageBlock){
		HashMap<String,String> pagingMap = new HashMap<>();
		int totalPage = (int)Math.ceil((double)totalCount/pageSize);
		startRow = (pageNum-1)*pageSize+1;
		endRow = pageNum*pageSize;
		pagingMap.put("startRow",String.valueOf(startRow));
		pagingMap.put("endRow",String.valueOf(endRow));
		//page�� ������ ~ ���� 
		int startPage = (int)((pageNum-1)/pageBlock)*pageBlock +1;
		int endPage = startPage+pageBlock -1;
		if(endPage>totalPage) {
			endPage = totalPage;
		}
		//�����ݷа� �ݷ� �����ϱ�
		sb = new StringBuffer();
		if(startPage < pageBlock) {
			sb.append("<img src='images/hot.png' width='30' height='9'>");			
		} else {
			sb.append("<img src='images/hot.png' width='30' height='9'");
			sb.append(" onclick='location.href=\"help.favorite?pageNum=");
			sb.append(startPage - pageBlock);
			sb.append("\"' style='cursor:pointer'> ");
		}
		
		sb.append("&nbsp;&nbsp;|");
		for(int i = startPage; i <= endPage; i++) {		
			if(i == pageNum) {
				sb.append("&nbsp;&nbsp;<b><font color='#91B7EF'>");
				sb.append(i);
				sb.append("</font></b>");
			} else {
				sb.append("&nbsp;&nbsp;<a href='help.favorite?pageNum=");
				sb.append(i);
				sb.append("'>");
				sb.append(i);
				sb.append("</a>");
			}
		}
		
		sb.append("&nbsp;&nbsp;|");		
		if(endPage < totalPage) {
			sb.append("<img src='images/hot.png' width='30' height='9'");
			sb.append(" onclick='location.href=\"help.favorite?pageNum=");
			sb.append(startPage + pageBlock);
			sb.append("\"' style='cursor:pointer'> ");						
		} else {
			sb.append("<img src='images/hot.png' width='30' height='9'>");			
		}	
		
		pagingMap.put("pageCode", sb.toString());
		return pagingMap;
	}	
	
}
