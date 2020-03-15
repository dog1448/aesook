package com.spring.aesook.client.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberBookingHotelsController {
	
    @RequestMapping(value="/bookingHotelsList.do", method=RequestMethod.GET)
    public String moveBookingHotelsList() {
    	return "/bookingHotelsList";
    }
	
}
