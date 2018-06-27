package com.ict.market.compare.dto;

public class CompareDTO {
	private String goodsName;
	private String martName;
	private String marketName;
	private int price;
	
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getMartName() {
		return martName;
	}
	public void setMartName(String martName) {
		this.martName = martName;
	}
	public String getMarketName() {
		return marketName;
	}
	public void setMarketName(String marketName) {
		this.marketName = marketName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "CompareDTO [goodsName=" + goodsName + ", martName=" + martName + ", marketName=" + marketName
				+ ", price=" + price + "]";
	}
	
	
	
	
	
	
	
}
