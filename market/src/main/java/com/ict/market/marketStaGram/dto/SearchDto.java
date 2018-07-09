package com.ict.market.marketStaGram.dto;

public class SearchDto {
	private String keyword;
	private int keywordTotalCount;
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getKeywordTotalCount() {
		return keywordTotalCount;
	}
	public void setKeywordTotalCount(int keywordTotalCount) {
		this.keywordTotalCount = keywordTotalCount;
	}
	@Override
	public String toString() {
		return "SearchDto [keyword=" + keyword + ", keywordTotalCount=" + keywordTotalCount + "]";
	}
}