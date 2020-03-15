package com.spring.aesook.client.image.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.spring.aesook.client.alarm.dao.MemberAlarmDAO;
import com.spring.aesook.client.alarm.vo.MemberAlarmVO;
import com.spring.aesook.client.image.dao.MemberImageDAO;
import com.spring.aesook.client.image.vo.MemberBrnImageVO;
import com.spring.aesook.client.member.dao.MemberDAO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.file.FileService;
import com.spring.aesook.common.file.FileVO;

@Service("memberUpdateImageBrnService")
public class MemberUpdateImageBrnServiceImpl implements MemberUpdateImageBrnService {

	@Autowired
	private MemberImageDAO memberImageDAO;
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MemberAlarmDAO memberAlarmDAO;
	@Autowired
	private FileService fileService;
	
	@Transactional(rollbackFor = Exception.class)
	public void updateImageBrn(MultipartFile file , MemberVO user) {
			
			// 1.파일등록
			FileVO fileVO = null;
			MemberBrnImageVO vo = null;
			try {
				fileVO = fileService.uploadFile(user.getMemberId(), file);
				vo = fileService.getMemberBrnImageFile(fileVO);
			} catch (Exception e) {
				e.printStackTrace();
			}
			vo.setMemberId(user.getMemberId());
			memberImageDAO.insertMemberImageBrn(vo);
			
			// 2. Alarm 등록
			MemberAlarmVO alarm = new MemberAlarmVO();
			alarm.setAlarmSendId(user.getMemberId());
			alarm.setAlarmRecieveId("Admin");
			alarm.setAlarmTitle(user.getMemberId() + "님의 사업자 등록입니다.");
			alarm.setAlarmContents("확인해 주세요");			
			memberAlarmDAO.insertMemberAlarm(alarm);
	
			// 3. Member 상태 -> 'W'등록
			user.setMemberStatus("W");
			memberDAO.updateStatusMember(user);

	}
	
	public MemberBrnImageVO getBrnImage(MemberVO vo) {
		return memberImageDAO.getMemberBrnImage(vo);
	}
	
}
