package com.spring.aesook.client.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.spring.aesook.client.review.service.MemberReviewService;

@Controller
public class MemberReviewController {
	
	@Autowired
	private MemberReviewService memberReviewService;
}
