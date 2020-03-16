package com.spring.aesook.client.member.dao;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.client.member.vo.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	public void updatePassMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public MemberVO getFindIdMember(MemberVO vo);
	public int getId(MemberVO vo);
	public void updateStatusMember(MemberVO vo);
	public void updateInfoMember(MemberVO vo);
	public void updateWithdrawal(String memberId);
}
