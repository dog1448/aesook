package com.spring.aesook.client.booking.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.aesook.admin.image.vo.ManagerAdminImageVO;
import com.spring.aesook.admin.terms.service.ManagerTermsService;
import com.spring.aesook.admin.terms.vo.ManagerTermsVO;
import com.spring.aesook.client.booking.service.MemberBookingCheckService;
import com.spring.aesook.client.booking.vo.MemberBookingVO;
import com.spring.aesook.client.hotels.vo.MemberRoomVO;
import com.spring.aesook.client.member.vo.MemberVO;
import com.spring.aesook.common.kakao.service.KakaoService;
import com.spring.aesook.common.kakao.service.KakaoUtil;
import com.spring.aesook.common.kakao.vo.KakaoPayApprovalVO;
import com.spring.aesook.common.kakao.vo.KakaoPayCancelVO;
import com.spring.aesook.common.kakao.vo.KakaoPayReadyVO;

@Controller
public class MemberBookingPaymentController {

	@Autowired
	private MemberBookingCheckService memberBookingCheckService;
	@Autowired
	private KakaoService kakaoService;
	@Autowired
	private ManagerTermsService managerTermsService;
	
	//Move to Payment Page
	@RequestMapping(value="/movePayment.do", method = RequestMethod.GET)
	public String movePayment(HttpSession session, MemberBookingVO bookingVO, MemberRoomVO roomVO, Model model) {
		if (bookingVO.getBookingName() == null || roomVO.getRoomSort() == null) {
			model.addAttribute("message", "결재를 진행 할 수 없습니다.");
			return "/successHome";
		}
		MemberVO user = (MemberVO)session.getAttribute("login");
		bookingVO.setMemberId(user.getMemberId());
		List<String> possibleRoom = memberBookingCheckService.getRoomPossible(bookingVO);
		int totalPrice = memberBookingCheckService.getTotalPrice(bookingVO, roomVO);
		List<ManagerTermsVO> termsList = managerTermsService.getAllTerms();
		model.addAttribute("possibleRoom", possibleRoom);
		model.addAttribute("booking", bookingVO);
		model.addAttribute("totalPrice", totalPrice);	
		model.addAttribute("termsList", termsList);
		return "/payment";
	}
	
	@RequestMapping(value="/kakaoPay.do", method=RequestMethod.POST)
	public String moveKakaoPay(MemberBookingVO vo, HttpSession httpSession) {
		
		// getbookingSeq
		vo.setBookingCode(KakaoUtil.getToday(memberBookingCheckService.getBookingSeq()));
		
		// ready Kakao
		KakaoPayReadyVO ready = kakaoService.kakaoPayReady(vo);
		vo.setTid(ready.getTid());
		httpSession.setAttribute("booking", vo);
		httpSession.setAttribute("ready", ready);
		return "redirect:"+ ready.getNext_redirect_pc_url();
	}
	
	@RequestMapping(value="/kakaoPaySuccess.do", method=RequestMethod.GET)
	public String successKakao(HttpSession httpSession, @RequestParam("pg_token")String pg_token, Model model) {
		
		// get Data
		MemberBookingVO vo = (MemberBookingVO) httpSession.getAttribute("booking");
		if (vo == null) {
			model.addAttribute("message", "죄송합니다. 처음부터 다시 진행해주세요");
			httpSession.removeAttribute("booking");
			httpSession.removeAttribute("ready");
			return "/successHome";
		}
		vo.setPg_token(pg_token);
		KakaoPayApprovalVO responseKakao = kakaoService.kakaoPayInfo(vo);
		
		// insert Booking
		memberBookingCheckService.insertBooking(vo);
		model.addAttribute("message","예약이 성공적으로 완료되었습니다.");
		
		// remove session values
		httpSession.removeAttribute("booking");
		httpSession.removeAttribute("ready");
		return "/successBooking";
	}
	
	@RequestMapping(value= {"/kakaoPayCancel.do", "kakaoPaySuccessFail.do"}, method = RequestMethod.GET)
	public String failKakao(HttpSession httpSession, Model model) {
		
		// model Setting
		model.addAttribute("message","예약이 취소되었습니다.");
		
		// remove session values
		httpSession.removeAttribute("booking");
		httpSession.removeAttribute("ready");
		return "/successBooking";
	}
	
	@RequestMapping(value="/kakaoPayCancel.do", method = RequestMethod.POST)
	public String cancelKakao(@RequestParam("bookingCode") int bookingCode, Model model) {
		MemberBookingVO booking = memberBookingCheckService.getBookingInfo(bookingCode);
		if (booking != null) {
			KakaoPayCancelVO kakaoCancel = kakaoService.kakaoPayCancel(booking);
			if (kakaoCancel.getStatus().equals("CANCEL_PAYMENT")) {
				// 취소 완료 되었을 때
				memberBookingCheckService.cancelBooking(bookingCode);
				model.addAttribute("message", "성공적으로 취소되었습니다.");
			} else {
				model.addAttribute("message", "취소에 실패하였습니다. 다시 시도해 주세요");
			}
		}
		return "/successBooking";
	}
	
}
