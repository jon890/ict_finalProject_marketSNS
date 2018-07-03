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
		      sb.append("<li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		    } else {
		      sb.append("<li class=''><a href='help.favorite?pageNum=");
		      sb.append(startPage - pageBlock);
		      sb.append("' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		    }
		     
		    for(int i = startPage; i <= endPage; i++) {
		      if(i == pageNum) {
		        sb.append("<li class='active'><a href='#'>");
		        sb.append(i);
		        sb.append("<span class='sr-only'>");
		        sb.append(i);
		        sb.append("</span></a></li>");
		      } else {
		        sb.append("<li class=''><a href='help.favorite?pageNum=");
		        sb.append(i);
		        sb.append("'>");
		        sb.append(i);
		        sb.append("<span class='sr-only'>");
		        sb.append(i);
		        sb.append("</span></a></li>");
		      }
		    }
		     
		    if(endPage < totalPage) {
		      sb.append("<li class=''><a href='help.favorite?pageNum=");
		      sb.append(startPage + pageBlock);
		      sb.append("' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		    } else {
		      sb.append("<li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		    }
		
		pagingMap.put("pageCode", sb.toString());
		return pagingMap;
	}	
	
}
