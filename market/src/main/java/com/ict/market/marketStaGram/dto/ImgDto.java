package com.ict.market.marketStaGram.dto;

public class ImgDto {
	private int fileNum;
	private String storedImgName;
	private int articleNum;
	
	public int getFileNum() {
		return fileNum;
	}
	public void setFileNum(int fileNum) {
		this.fileNum = fileNum;
	}
	public String getStoredImgName() {
		return storedImgName;
	}
	public void setStoredImgName(String storedImgName) {
		this.storedImgName = storedImgName;
	}
	public int getArticleNum() {
		return articleNum;
	}
	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}
	
	@Override
	public String toString() {
		return "ImgDto [fileNum=" + fileNum + ", storedImgName=" + storedImgName + ", articleNum=" + articleNum + "]";
	}
}