package com.ict.market.compare.dto;

public class martPriceDTO {
	private String goodsName;
	private String emartPrice;
	private String homePlusPrice;
	private String lotteMartPrice; 
	private String yeongAmMartPrice;
	private String lotteMartSouthPrice;

	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
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
	public String getYeongAmMartPrice() {
		return yeongAmMartPrice;
	}
	public void setYeongAmMartPrice(String yeongAmMartPrice) {
		this.yeongAmMartPrice = yeongAmMartPrice;
	}
	public String getLotteMartSouthPrice() {
		return lotteMartSouthPrice;
	}
	public void setLotteMartSouthPrice(String lotteMartSouthPrice) {
		this.lotteMartSouthPrice = lotteMartSouthPrice;
	}
	@Override
	public String toString() {
		return "martPriceDTO [goodsName=" + goodsName + ", emartPrice=" + emartPrice + ", homePlusPrice="
				+ homePlusPrice + ", lotteMartPrice=" + lotteMartPrice + ", yeongAmMartPrice=" + yeongAmMartPrice
				+ ", lotteMartSouthPrice=" + lotteMartSouthPrice + "]";
	}
	
	
	
}
