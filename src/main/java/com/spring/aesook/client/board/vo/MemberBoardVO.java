package com.spring.aesook.client.board.vo;


import java.util.Date;

public class MemberBoardVO {
	private Integer boardCnt;
	private Integer boardSeq;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private int boardGroup;
	private int boardStep;
	private int boardDepth;
	private int boardReadcount;
	private String boardIP;
	private Date boardDate;
	private String boardType;
	
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getBoardGroup() {
		return boardGroup;
	}
	public void setBoardGroup(int boardGroup) {
		this.boardGroup = boardGroup;
	}
	public int getBoardStep() {
		return boardStep;
	}
	public void setBoardStep(int boardStep) {
		this.boardStep = boardStep;
	}
	public int getBoardDepth() {
		return boardDepth;
	}
	public void setBoardDepth(int boardDepth) {
		this.boardDepth = boardDepth;
	}
	public int getBoardReadcount() {
		return boardReadcount;
	}
	public void setBoardReadcount(int boardReadcount) {
		this.boardReadcount = boardReadcount;
	}
	public String getBoardIP() {
		return boardIP;
	}
	public void setBoardIP(String boardIP) {
		this.boardIP = boardIP;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public Integer getBoardSeq() {
		return boardSeq;
	}

	public Integer getBoardCnt() {
		return boardCnt;
	}

	public void setBoardCnt(Integer boardCnt) {
		this.boardCnt = boardCnt;
	}

	public void setBoardSeq(Integer boardSeq) {
		this.boardSeq = boardSeq;
	}

	@Override
	public String toString() {
		return "MemberBoardVO{" +
				"boardSeq=" + boardSeq +
				", boardWriter='" + boardWriter + '\'' +
				", boardTitle='" + boardTitle + '\'' +
				", boardContent='" + boardContent + '\'' +
				", boardGroup=" + boardGroup +
				", boardStep=" + boardStep +
				", boardDepth=" + boardDepth +
				", boardReadcount=" + boardReadcount +
				", boardIP='" + boardIP + '\'' +
				", boardDate=" + boardDate +
				", boardType='" + boardType + '\'' +
				'}';
	}
}
