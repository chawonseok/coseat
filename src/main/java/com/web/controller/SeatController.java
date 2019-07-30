package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.dao.SeatDao;
import com.web.dto.Seat;

@Controller
@RequestMapping("/*")
public class SeatController {
	
	@Autowired
	private SeatDao seatDao;
	
	@RequestMapping(value="seat",method=RequestMethod.GET )
	private String seat(String SeatId,String RoomId, String NickName,String UserCode,String x,String y,String status,Model model) {
		List<Seat> seat;
		seat = seatDao.get();
		model.addAttribute("seat", seat);
		
		return "seat";
	}

}
