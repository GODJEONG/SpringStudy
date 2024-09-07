package com.digi.work.dto;

import java.util.Date;

public class BasketBean {
	
	int order_no, food_cnt;
	Date orderdate;
	String id,	food;
	
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public int getFood_cnt() {
		return food_cnt;
	}
	public void setFood_cnt(int food_cnt) {
		this.food_cnt = food_cnt;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	

}
