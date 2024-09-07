package com.digi.test.dto;

import com.google.gson.annotations.SerializedName;

public class Candle {

	@SerializedName("candle_date_time_kst")
	private String candleDateTimeKst;

	@SerializedName("opening_price")
	private double openingPrice;

	@SerializedName("high_price")
	private double highPrice;

	@SerializedName("low_price")
	private double lowPrice;

	@SerializedName("trade_price")
	private double tradePrice;

	// Getters and setters

	public String getCandleDateTimeKst() {
		return candleDateTimeKst;
	}

	public void setCandleDateTimeKst(String candleDateTimeKst) {
		this.candleDateTimeKst = candleDateTimeKst;
	}

	public double getOpeningPrice() {
		return openingPrice;
	}

	public void setOpeningPrice(double openingPrice) {
		this.openingPrice = openingPrice;
	}

	public double getHighPrice() {
		return highPrice;
	}

	public void setHighPrice(double highPrice) {
		this.highPrice = highPrice;
	}

	public double getLowPrice() {
		return lowPrice;
	}

	public void setLowPrice(double lowPrice) {
		this.lowPrice = lowPrice;
	}

	public double getTradePrice() {
		return tradePrice;
	}

	public void setTradePrice(double tradePrice) {
		this.tradePrice = tradePrice;
	}
}