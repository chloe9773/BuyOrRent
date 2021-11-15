package com.jeonghwapark.buyorrent.model;

import java.util.Date;

import com.google.gson.Gson;

public class MessageVO {
	private int messageId;
	private int messageSender;
	private int messageReceiver;
	private String message;
	private Date sendTime;
	private Date readTime;
	private int chatroomId;
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public int getMessageSender() {
		return messageSender;
	}
	public void setMessageSender(int messageSender) {
		this.messageSender = messageSender;
	}
	public int getMessageReceiver() {
		return messageReceiver;
	}
	public void setMessageReceiver(int messageReceiver) {
		this.messageReceiver = messageReceiver;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	public Date getReadTime() {
		return readTime;
	}
	public void setReadTime(Date readTime) {
		this.readTime = readTime;
	}
	public int getChatroomId() {
		return chatroomId;
	}
	public void setChatroomId(int chatroomId) {
		this.chatroomId = chatroomId;
	}
	
	public static MessageVO convertMessage(String source) {
		MessageVO message = new MessageVO();
		Gson gson = new Gson();
		message = gson.fromJson(source, MessageVO.class);
		
		return message;
	}
	
	@Override
	public String toString() {
		return "";
	}
}
