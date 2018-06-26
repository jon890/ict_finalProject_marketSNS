package com.ict.market.compare.dto;

public class CompareDTO {
	private String date;
	private String type;
	private String price;
	private String marketName;
	private String martName;
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getMarketName() {
		return marketName;
	}
	public void setMarketName(String marketName) {
		this.marketName = marketName;
	}
	public String getMartName() {
		return martName;
	}
	public void setMartName(String martName) {
		this.martName = martName;
	}
	@Override
	public String toString() {
		return "CompareDTO [date=" + date + ", type=" + type + ", price=" + price + ", marketName=" + marketName
				+ ", martName=" + martName + "]";
	}
	
	
	
}
