package com.ezen;

public class DTO {
	String no, name, wrt, com;
	int price;
	String cover, wrtde, bookde;
	
	public DTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DTO(String no, String name, String wrt, String com, int price, String cover, String wrtde, String bookde) {
		super();
		this.no = no;
		this.name = name;
		this.wrt = wrt;
		this.com = com;
		this.price = price;
		this.cover = cover;
		this.wrtde = wrtde;
		this.bookde = bookde;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWrt() {
		return wrt;
	}

	public void setWrt(String wrt) {
		this.wrt = wrt;
	}

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getWrtde() {
		return wrtde;
	}

	public void setWrtde(String wrtde) {
		this.wrtde = wrtde;
	}

	public String getBookde() {
		return bookde;
	}

	public void setBookde(String bookde) {
		this.bookde = bookde;
	}
	
	

}
