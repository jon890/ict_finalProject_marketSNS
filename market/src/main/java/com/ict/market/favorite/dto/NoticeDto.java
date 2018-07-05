package com.ict.market.favorite.dto;

public class NoticeDto {
	private int articleNum;
	private String id;
	private String title;
	private String content;
	private String writeDate;
	
	public int getArticleNum() {
		return articleNum;
	}

	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "NoticeDto [articleNum=" + articleNum + ", title=" + title + ", content=" + content + ", id=" + id
				+ ", writeDate=" + writeDate + "]";
	}
	
	
}
