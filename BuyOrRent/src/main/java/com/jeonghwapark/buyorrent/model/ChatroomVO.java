package com.jeonghwapark.buyorrent.model;

public class ChatroomVO {
	private int chatroomId;
	private int userAId;
	private int userBId;
	private String userANick;
	private String userBNick;
	
	public int getChatroomId() {
		return chatroomId;
	}
	public void setChatroomId(int chatroomId) {
		this.chatroomId = chatroomId;
	}
	public int getUserAId() {
		return userAId;
	}
	public void setUserAId(int userAId) {
		this.userAId = userAId;
	}
	public int getUserBId() {
		return userBId;
	}
	public void setUserBId(int userBId) {
		this.userBId = userBId;
	}
	public String getUserANick() {
		return userANick;
	}
	public void setUserANick(String userANick) {
		this.userANick = userANick;
	}
	public String getUserBNick() {
		return userBNick;
	}
	public void setUserBNick(String userBNick) {
		this.userBNick = userBNick;
	}
	
	@Override
	public String toString() {
		return "";
	}
}
