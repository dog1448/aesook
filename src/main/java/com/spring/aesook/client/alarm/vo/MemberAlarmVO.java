package com.spring.aesook.client.alarm.vo;

import java.sql.Date;

public class MemberAlarmVO {

	private String alarmSendId;
	private String alarmRecieveId;
	private String alarmStatus;
	private String alarmTitle;
	private String alarmContents;
	private Date alarmDate;

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

	@Override
	public String toString() {
		return "AlarmVO [alarmSendId=" + alarmSendId + ", alarmRecieveId=" + alarmRecieveId + ", alarmStatus="
				+ alarmStatus + ", alarmTitle=" + alarmTitle + ", alarmContents=" + alarmContents + "]";
	}
	
	
}
