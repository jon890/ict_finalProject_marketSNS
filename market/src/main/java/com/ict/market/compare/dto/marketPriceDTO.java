package com.ict.market.compare.dto;

public class marketPriceDTO {
	private String goodsName;
	private String daeInPrice;
	private String yangDongPrice;
	private String muDeungPrice;
	private String malBawooPrice;
	private String moonPrice;
	
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
	public String getYangDongPrice() {
		return yangDongPrice;
	}
	public void setYangDongPrice(String yangDongPrice) {
		this.yangDongPrice = yangDongPrice;
	}
	public String getMuDeungPrice() {
		return muDeungPrice;
	}
	public void setMuDeungPrice(String muDeungPrice) {
		this.muDeungPrice = muDeungPrice;
	}
	public String getMalBawooPrice() {
		return malBawooPrice;
	}
	public void setMalBawooPrice(String malBawooPrice) {
		this.malBawooPrice = malBawooPrice;
	}
	public String getMoonPrice() {
		return moonPrice;
	}
	public void setMoonPrice(String moonPrice) {
		this.moonPrice = moonPrice;
	}
	@Override
	public String toString() {
		return "marketPriceDTO [goodsName=" + goodsName + ", daeInPrice=" + daeInPrice + ", yangDongPrice="
				+ yangDongPrice + ", muDeungPrice=" + muDeungPrice + ", malBawooPrice=" + malBawooPrice + ", moonPrice="
				+ moonPrice + "]";
	}
	
	
	

	
	
	
}
