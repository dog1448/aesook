package com.spring.aesook.common.kakao.service;

import java.text.SimpleDateFormat;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;

public class KakaoUtil {
	
	public static HttpHeaders getHeader() {
		HttpHeaders header = new HttpHeaders();
		header.add("Authorization", "KakaoAK " + "c8ff7de40a4a608a29d1c9e2034bf008");
		header.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		header.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		return header;
	}
	
	public static String getToday() {
		java.util.Date now = new java.util.Date();
	    SimpleDateFormat vans = new SimpleDateFormat("yyyyMMdd");
	    String wdate = vans.format(now);
		return wdate;
	}
	
	
	
}
