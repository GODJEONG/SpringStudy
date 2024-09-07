package com.digi.work.dto;

public class LoginBean {
	private String id, pw, pwconfirm, email, name, socialsecuritynumber,Birth, year, month, day, intro, interstring, admin;

	
	
	public String getInterstring() {
		return interstring;
	}

	public void setInterstring(String interstring) {
		this.interstring = interstring;
	}

	private String[] inter;


	public String[] getInter() {
		return inter;
	}

	public void setInter(String[] inter) {
		this.inter = inter;
	}

	public String getBirth() {
		return Birth;
	}

	public void setBirth(String birth) {
		Birth = birth;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPwconfirm() {
		return pwconfirm;
	}

	public void setPwconfirm(String pwconfirm) {
		this.pwconfirm = pwconfirm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSocialsecuritynumber() {
		return socialsecuritynumber;
	}

	public void setSocialsecuritynumber(String socialsecuritynumber) {
		this.socialsecuritynumber = socialsecuritynumber;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

}
