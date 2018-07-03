package com.ict.market.marketIntroduce.dto;

public class MarketDto {
	private String marketName;
	private String marketOpening;
	private String marketHours;
	private String marketAddress;
	private String marketPhone;
	private String marketLoc;
	
	public String getMarketName() {
		return marketName;
	}
	public void setMarketName(String marketName) {
		this.marketName = marketName;
	}
	public String getMarketOpening() {
		return marketOpening;
	}
	public void setMarketOpening(String marketOpening) {
		this.marketOpening = marketOpening;
	}
	public String getMarketHours() {
		return marketHours;
	}
	public void setMarketHours(String marketHours) {
		this.marketHours = marketHours;
	}
	public String getMarketAddress() {
		return marketAddress;
	}
	public void setMarketAddress(String marketAddress) {
		this.marketAddress = marketAddress;
	}
	public String getMarketPhone() {
		return marketPhone;
	}
	public void setMarketPhone(String marketPhone) {
		this.marketPhone = marketPhone;
	}
	public String getMarketLoc() {
		return marketLoc;
	}
	public void setMarketLoc(String marketLoc) {
		this.marketLoc = marketLoc;
	}
	
	@Override
	public String toString() {
		return "MarketDto [marketName=" + marketName + ", marketOpening=" + marketOpening + ", marketHours="
				+ marketHours + ", marketAddress=" + marketAddress + ", marketPhone=" + marketPhone + ", marketLoc="
				+ marketLoc + "]";
	}
	
}