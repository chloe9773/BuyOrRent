package com.jeonghwapark.buyorrent.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommentVO {
	private int cid;
	private int aid;
	private String author;
	private String contnet;
	private Date regDate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContnet() {
		return contnet;
	}
	public void setContnet(String contnet) {
		this.contnet = contnet;
	}
	public String getRegDate() {
		return sdf.format(regDate);
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
