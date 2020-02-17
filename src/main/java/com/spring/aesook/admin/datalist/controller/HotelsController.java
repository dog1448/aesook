package com.spring.aesook.admin.datalist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.aesook.admin.datalist.service.HotelsService;
import com.spring.aesook.admin.datalist.vo.HotelsVO;

@Controller
@SessionAttributes("hotels")
public class HotelsController {
	@Autowired
	HotelsService hotelService;
	
	@RequestMapping(value = "/hotelsTable.admin", method = RequestMethod.GET)
	public String moveHotelsTable(Model model) {
		List<HotelsVO> hotelsList = hotelService.getListHotels();
		model.addAttribute("hotelsList",hotelsList);
		return "/hotelsTable";
	}
	
	@RequestMapping(value = "/hotelsInfo.admin", method = RequestMethod.GET)
	public String moveHotelsInfo(@RequestParam int hotelsCode,Model model) {
		HotelsVO vo = hotelService.getHotels(hotelsCode);
		model.addAttribute("hotel",vo);
		return "/hotelsInfo";
	}
	
	@RequestMapping(value = "/updateHotel.admin", method =RequestMethod.POST)
	public String updateHotel(HotelsVO vo) {
		System.out.println(vo);
		hotelService.updateHotel(vo);
		return "redirect:/hotelsTable.admin";
	}
	
}
