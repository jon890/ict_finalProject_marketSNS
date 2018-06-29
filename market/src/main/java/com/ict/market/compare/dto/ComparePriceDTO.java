package com.ict.market.compare.dto;

public class ComparePriceDTO {
	private String goodsName;
	private String daeInPrice;
	private String yangdongPrice;
	private String malbawooPrice;
	private String avgMarket;
	private String avgMart;
	private String emartPrice;
	private String homePlusPrice;
	private String lotteMartPrice;
	
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getDaeInPrice() {
		return daeInPrice;
	}
	public void setDaeInPrice(String daeInPrice) {
		this.daeInPrice = daeInPrice;
	}
	public String getYangdongPrice() {
		return yangdongPrice;
	}
	public void setYangdongPrice(String yangdongPrice) {
		this.yangdongPrice = yangdongPrice;
	}
	public String getMalbawooPrice() {
		return malbawooPrice;
	}
	public void setMalbawooPrice(String malbawooPrice) {
		this.malbawooPrice = malbawooPrice;
	}
	public String getAvgMarket() {
		return avgMarket;
	}
	public void setAvgMarket(String avgMarket) {
		this.avgMarket = avgMarket;
	}
	public String getAvgMart() {
		return avgMart;
	}
	public void setAvgMart(String avgMart) {
		this.avgMart = avgMart;
	}
	public String getEmartPrice() {
		return emartPrice;
	}
	public void setEmartPrice(String emartPrice) {
		this.emartPrice = emartPrice;
	}
	public String getHomePlusPrice() {
		return homePlusPrice;
	}
	public void setHomePlusPrice(String homePlusPrice) {
		this.homePlusPrice = homePlusPrice;
	}
	public String getLotteMartPrice() {
		return lotteMartPrice;
	}
	public void setLotteMartPrice(String lotteMartPrice) {
		this.lotteMartPrice = lotteMartPrice;
	}
	
	@Override
	public String toString() {
		return "ComparePriceDTO [goodsName=" + goodsName + ", daeInPrice=" + daeInPrice + ", yangdongPrice="
				+ yangdongPrice + ", malbawooPrice=" + malbawooPrice + ", avgMarket=" + avgMarket + ", avgMart="
				+ avgMart + ", emartPrice=" + emartPrice + ", homePlusPrice=" + homePlusPrice + ", lotteMartPrice="
				+ lotteMartPrice + "]";
	}
	
	
	
	
}
