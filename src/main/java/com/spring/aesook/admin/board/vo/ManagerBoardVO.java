package com.spring.aesook.admin.board.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class ManagerBoardVO {

	private int BoardSeq;
	private String BoardWriter;
	private String BoardTitle;
	private String BoardContent;
	private int BoardGroup;
	private int BoardStep;
	private int BoardDepth;
	private int BoardReadcount;
	private String BoardIp;
	private Date BoardDate;
	private String BoardType;

	public int getBoardSeq() {
		return BoardSeq;
	}

	@Override
	public String toString() {
		return "ManagerBoardVO [BoardSeq=" + BoardSeq + ", BoardWriter=" + BoardWriter + ", BoardTitle=" + BoardTitle
				+ ", BoardContent=" + BoardContent + ", BoardGroup=" + BoardGroup + ", BoardStep=" + BoardStep
				+ ", BoardDepth=" + BoardDepth + ", BoardReadcount=" + BoardReadcount + ", BoardIp=" + BoardIp
				+ ", BoardDate=" + BoardDate + ", BoardType=" + BoardType + "]";
	}

	public void setBoardSeq(int boardSeq) {
		BoardSeq = boardSeq;
	}

	public String getBoardWriter() {
		return BoardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		BoardWriter = boardWriter;
	}

	public String getBoardTitle() {
		return BoardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}

	public String getBoardContent() {
		return BoardContent;
	}

	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}

	public int getBoardGroup() {
		return BoardGroup;
	}

	public void setBoardGroup(int boardGroup) {
		BoardGroup = boardGroup;
	}

	public int getBoardStep() {
		return BoardStep;
	}

	public void setBoardStep(int boardStep) {
		BoardStep = boardStep;
	}

	public int getBoardDepth() {
		return BoardDepth;
	}

	public void setBoardDepth(int boardDepth) {
		BoardDepth = boardDepth;
	}

	public int getBoardReadcount() {
		return BoardReadcount;
	}

	public void setBoardReadcount(int boardReadcount) {
		BoardReadcount = boardReadcount;
	}

	public String getBoardIp() {
		return BoardIp;
	}
	
	public void setBoardIp(String boardIp) {
		BoardIp = boardIp;
	}

	public Date getBoardDate() {
		return BoardDate;
	}

	public void setBoardDate(Date boardDate) {
		BoardDate = boardDate;
	}

	public String getBoardType() {
		return BoardType;
	}

	public void setBoardType(String boardType) {
		BoardType = boardType;
	}

}
