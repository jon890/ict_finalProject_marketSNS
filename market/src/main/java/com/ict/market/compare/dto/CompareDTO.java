package com.ict.market.compare.dto;

public class CompareDTO {
	private String goods;
	private String martName;
	private String marketName;
	private int goodsPrice;
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
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
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	@Override
	public String toString() {
		return "CompareDTO [goods=" + goods + ", martName=" + martName + ", marketName=" + marketName + ", goodsPrice="
				+ goodsPrice + "]";
	}
	
	
	
	
}
