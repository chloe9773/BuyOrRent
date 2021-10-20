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
	private String addressCity;
	private String addressGu;
	private String addressDong;
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
	public String getAddressCity() {
		return addressCity;
	}

	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}

	public String getAddressGu() {
		return addressGu;
	}

	public void setAddressGu(String addressGu) {
		this.addressGu = addressGu;
	}

	public String getAddressDong() {
		return addressDong;
	}

	public void setAddressDong(String addressDong) {
		this.addressDong = addressDong;
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
