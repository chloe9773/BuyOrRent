package com.jeonghwapark.buyorrent.model;

import java.util.Date;

public class MemberVO {
	private int userId;
	private String username;
	private String password;
	private Date regDate;
	private int level;
	private String userNick;
	private String addrSido;
	private String addrGu;
	private String addrDong;
	private int addrLevel;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getAddrSido() {
		return addrSido;
	}
	public void setAddrSido(String addrSido) {
		this.addrSido = addrSido;
	}
	public String getAddrGu() {
		return addrGu;
	}
	public void setAddrGu(String addrGu) {
		this.addrGu = addrGu;
	}
	public String getAddrDong() {
		return addrDong;
	}
	public void setAddrDong(String addrDong) {
		this.addrDong = addrDong;
	}
	public int getAddrLevel() {
		return addrLevel;
	}
	public void setAddrLevel(int addrLevel) {
		this.addrLevel = addrLevel;
	}
}
