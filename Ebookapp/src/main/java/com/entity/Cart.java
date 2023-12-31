package com.entity;

public class Cart {
	private int cid;
	private int bid;
	private int userId;
	
	private String author;
	private String bookName;
	private Double price;
	private Double totalPrice;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int bid, int userId, String author, String bookName, Double price, Double totalPrice) {
		super();
		this.bid = bid;
		this.userId = userId;
		this.author = author;
		this.bookName = bookName;
		this.price = price;
		this.totalPrice = totalPrice;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", bid=" + bid + ", userId=" + userId + ", author=" + author + ", bookName="
				+ bookName + ", price=" + price + ", totalPrice=" + totalPrice + "]";
	}
	
	

}