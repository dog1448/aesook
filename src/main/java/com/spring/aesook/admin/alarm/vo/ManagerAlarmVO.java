package com.spring.aesook.admin.alarm.vo;

import java.sql.Date;

public class ManagerAlarmVO {
	
	private int alarmNo;
	private String alarmSendId;
	private String alarmRecieveId;
	private String alarmStatus;
	private String alarmTitle;
	private String alarmContents;
	private Date alarmDate;
	
	private String brnImageName;
	private String brnImagePath;
	private String brnImageStatus;


	public int getAlarmNo() {
		return alarmNo;
	}

	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}

	public String getAlarmSendId() {
		return alarmSendId;
	}

	public void setAlarmSendId(String alarmSendId) {
		this.alarmSendId = alarmSendId;
	}

	public String getAlarmRecieveId() {
		return alarmRecieveId;
	}

	public void setAlarmRecieveId(String alarmRecieveId) {
		this.alarmRecieveId = alarmRecieveId;
	}

	public String getAlarmStatus() {
		return alarmStatus;
	}

	public void setAlarmStatus(String alarmStatus) {
		this.alarmStatus = alarmStatus;
	}

	public String getAlarmTitle() {
		return alarmTitle;
	}

	public void setAlarmTitle(String alarmTitle) {
		this.alarmTitle = alarmTitle;
	}

	public String getAlarmContents() {
		return alarmContents;
	}

	public void setAlarmContents(String alarmContents) {
		this.alarmContents = alarmContents;
	}

	public Date getAlarmDate() {
		return alarmDate;
	}

	public void setAlarmDate(Date alarmDate) {
		this.alarmDate = alarmDate;
	}

	public String getBrnImageName() {
		return brnImageName;
	}

	public void setBrnImageName(String brnImageName) {
		this.brnImageName = brnImageName;
	}

	public String getBrnImagePath() {
		return brnImagePath;
	}

	public void setBrnImagePath(String brnImagePath) {
		this.brnImagePath = brnImagePath;
	}

	public String getBrnImageStatus() {
		return brnImageStatus;
	}

	public void setBrnImageStatus(String brnImageStatus) {
		this.brnImageStatus = brnImageStatus;
	}

	@Override
	public String toString() {
		return "ManagerAlarmVO [alarmSendId=" + alarmSendId + ", alarmRecieveId=" + alarmRecieveId + ", alarmStatus="
				+ alarmStatus + ", alarmTitle=" + alarmTitle + ", alarmContents=" + alarmContents + ", alarmDate="
				+ alarmDate + ", brnImageName=" + brnImageName + ", brnImagePath=" + brnImagePath + ", brnImageStatus="
				+ brnImageStatus + "]";
	}
	
	
	
}
