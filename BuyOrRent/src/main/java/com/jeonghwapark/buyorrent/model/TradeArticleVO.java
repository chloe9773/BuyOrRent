package com.jeonghwapark.buyorrent.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TradeArticleVO {
	private int tid;
	private String category;
	private String price;
	private String title;
	private String author;
	private String content;
	private String address_city;
	private String address_gu;
	private String address_dong;
	private int likes;
	private int chat;
	private Date regDate;
	private String fileName;
	private String fileOriName;
	private Date updateDate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm");

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAddress_city() {
		return address_city;
	}

	public void setAddress_city(String address_city) {
		this.address_city = address_city;
	}

	public String getAddress_gu() {
		return address_gu;
	}

	public void setAddress_gu(String address_gu) {
		this.address_gu = address_gu;
	}

	public String getAddress_dong() {
		return address_dong;
	}

	public void setAddress_dong(String address_dong) {
		this.address_dong = address_dong;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getChat() {
		return chat;
	}

	public void setChat(int chat) {
		this.chat = chat;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileOriName() {
		return fileOriName;
	}

	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}
