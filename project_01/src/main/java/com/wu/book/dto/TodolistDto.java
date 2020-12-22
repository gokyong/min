package com.wu.book.dto;

public class TodolistDto {
	
	private int Tnum;
	private String Ttime1;
	private String Ttime2;
	private String Tdo;
	private String Tsuccess;
	private int Tday;
	private String join_date;
	private int cs;
	private String userId;

	
	
	public TodolistDto() {
		// TODO Auto-generated constructor stub
	}

	public TodolistDto(int tnum, String ttime1, String ttime2, String tdo, String tsuccess, int tday, String join_date, int cs, String userId) {
		this.Tnum = tnum;
		this.Ttime1 = ttime1;
		this.Ttime2 = ttime2;
		this.Tdo = tdo;
		this.Tsuccess = tsuccess;
		this.Tday = tday;
		this.join_date = join_date;
		this.cs = cs;
		this.userId = userId;
	}

	public int getCs() {
		return cs;
	}

	public void setCs(int cs) {
		this.cs = cs;
	}

	public int getTnum() {
		return Tnum;
	}

	public void setTnum(int tnum) {
		Tnum = tnum;
	}

	public String getTtime1() {
		return Ttime1;
	}

	public void setTtime1(String ttime1) {
		Ttime1 = ttime1;
	}

	public String getTtime2() {
		return Ttime2;
	}

	public void setTtime2(String ttime2) {
		Ttime2 = ttime2;
	}

	public String getTdo() {
		return Tdo;
	}

	public void setTdo(String tdo) {
		Tdo = tdo;
	}

	public String getTsuccess() {
		return Tsuccess;
	}

	public void setTsuccess(String tsuccess) {
		Tsuccess = tsuccess;
	}

	public int getTday() {
		return Tday;
	}

	public void setTday(int tday) {
		Tday = tday;
	}

	public String getJoin_date() {
		return join_date;
	}

	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}


	
	
	
}
