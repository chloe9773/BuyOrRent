package com.jeonghwapark.buyorrent.model;

import java.util.Date;

/**
 * @author jeonghwapark
 *
 */
public class BoardVO {
	private int boardId;
	private String boardType;
	private String boardName;
	private int boardAuthRead;
	private int boardAuthWrite;
	private Date boardCreated;
	private Date boardUpdated;
	
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public int getBoardAuthRead() {
		return boardAuthRead;
	}
	public void setBoardAuthRead(int boardAuthRead) {
		this.boardAuthRead = boardAuthRead;
	}
	public int getBoardAuthWrite() {
		return boardAuthWrite;
	}
	public void setBoardAuthWrite(int boardAuthWrite) {
		this.boardAuthWrite = boardAuthWrite;
	}
	public Date getBoardCreated() {
		return boardCreated;
	}
	public void setBoardCreated(Date boardCreated) {
		this.boardCreated = boardCreated;
	}
	public Date getBoardUpdated() {
		return boardUpdated;
	}
	public void setBoardUpdated(Date boardUpdated) {
		this.boardUpdated = boardUpdated;
	}
}
