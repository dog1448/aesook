package com.spring.aesook.common.kakao.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.common.kakao.vo.KakaoPayApprovalVO;
import com.spring.aesook.common.kakao.vo.KakaoPayCancelVO;
import com.spring.aesook.common.kakao.vo.KakaoPayReadyVO;

@Service("kakaoService")
public class KakaoServiceImpl implements KakaoService {

	private static final String HOST = "https://kapi.kakao.com";
	private RestTemplate restTemplate = new RestTemplate();
	private KakaoPayReadyVO kakaoPayReadyVO;
	
	public KakaoPayReadyVO kakaoPayReady(MemberBookingVO booking) {
		
		// Request kakaoServer Body
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", Integer.toString(booking.getBookingCode()));
		params.add("partner_user_id", booking.getMemberId());
		params.add("item_name", booking.getHotelsName() + " " + booking.getRoomSort());
		params.add("quantity", "1");
		params.add("total_amount", Integer.toString(booking.getBookingTotalPrice()));
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://ec2-54-180-125-121.ap-northeast-2.compute.amazonaws.com/kakaoPaySuccess.do");
		params.add("cancel_url", "http://ec2-54-180-125-121.ap-northeast-2.compute.amazonaws.com/kakaoPayCancel.do");
		params.add("fail_url", "http://ec2-54-180-125-121.ap-northeast-2.compute.amazonaws.com/kakaoPaySuccessFail.do");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String,String>>(params, KakaoUtil.getHeader());
		try {
			kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST+"/v1/payment/ready"), body, KakaoPayReadyVO.class);
			//log.info(""+KakaoPayReadyVO);
			return kakaoPayReadyVO;
		} catch(RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		kakaoPayReadyVO.setNext_redirect_pc_url("pay");
		System.out.println(kakaoPayReadyVO.getNext_redirect_pc_url());
		return kakaoPayReadyVO;
	}
	
	public KakaoPayApprovalVO kakaoPayInfo(MemberBookingVO booking) {
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", booking.getTid());
		params.add("partner_order_id", Integer.toString(booking.getBookingCode()));
		params.add("partner_user_id", booking.getMemberId());
		params.add("pg_token", booking.getPg_token());
		params.add("total_amount", Integer.toString(booking.getBookingTotalPrice()));

		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String,String>>(params, KakaoUtil.getHeader());
		
		try {
			KakaoPayApprovalVO kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
			// log.info
			return kakaoPayApprovalVO;
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace(); 
		}
		return null;
	}
	
	public KakaoPayCancelVO kakaoPayCancel(MemberBookingVO booking) {
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", booking.getTid());
		params.add("cancel_amount", Integer.toString(booking.getBookingTotalPrice()));
		params.add("cancel_tax_free_amount", "0");
		// params.add("cancel_available_amount","");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String,String>>(params, KakaoUtil.getHeader());
		try {
			KakaoPayCancelVO kakaoPayCancelVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/cancel"), body, KakaoPayCancelVO.class);
			// log.info
			return kakaoPayCancelVO;
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace(); 
		}
		return null;
	}
	
}
