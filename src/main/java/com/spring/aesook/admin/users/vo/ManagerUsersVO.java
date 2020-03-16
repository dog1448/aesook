package com.spring.aesook.admin.users.vo;

public class ManagerUsersVO {
	private String memberId;
	private String memberPass;
	private String memberName;
	private String memberEmail;
	private String memberPhone;
	private String memberStatus;


	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPass() {
		return memberPass;
	}

	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPass=" + memberPass + ", memberName=" + memberName
				+ ", memberEmail=" + memberEmail + ", memberPhone=" + memberPhone + ", memberStatus=" + memberStatus
				+ "]";
	}
}
