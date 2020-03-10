package com.spring.aesook.common.kakao.service;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.common.kakao.vo.KakaoPayApprovalVO;
import com.spring.aesook.common.kakao.vo.KakaoPayReadyVO;

public interface KakaoService {

	public KakaoPayReadyVO kakaoPayReady(MemberBookingVO booking);
	public KakaoPayApprovalVO kakaoPayInfo(MemberBookingVO booking);
	
}
