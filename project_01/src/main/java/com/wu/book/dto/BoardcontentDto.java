package com.wu.book.dto;

public class BoardcontentDto {
	
	int bnum;
	String btitle;
	String bcontent;
	String join_date;
	String userId;
	
	public BoardcontentDto() {
		// TODO Auto-generated constructor stub
	}

	public BoardcontentDto(int bnum, String btitle, String bcontent, String join_date, String userId) {
		super();
		this.bnum = bnum;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.join_date = join_date;
		this.userId = userId;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
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
