package com.web.controller;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.dao.RoomDao;
import com.web.dto.Room;
import com.web.dto.User;

@Controller
//@SessionAttributes({ "user", "ip" })

@RequestMapping("/*")
public class OcuppyController {
	
	@Autowired
	private RoomDao roomdao;
	
	@RequestMapping(value = "occupychk", method = RequestMethod.GET)
	private String occupychk() {

		return "template";
	}

	@RequestMapping(value="roomin",method=RequestMethod.GET)
	private String roomin( Model model) {
		
		
//		Room room = roomdao.chkRoomNo(roomId);
		Room room = null;
		if(room==null) {
			//방번호가 없는 경우
			model.addAttribute("mainUrl", "occupy/alert.jsp");
			model.addAttribute("msg", "방번호가 존재하지 않습니다");
			model.addAttribute("goUrl", "login");
		}
		else {
//			//방번호가 있는 경우
//			if(user.getUserCode()<0) {//비회원일 경우,
//				
//				
//			}else {//회원일 경우
//				
//				
//			}
//			
//			
//			model.addAttribute("mainUrl", "occupy/alert.jsp");
//			model.addAttribute("goUrl", "roominView");
		}
		
		

		
		return "template";
		// TODO Auto-generated method stub
	}

	@RequestMapping(value = "roominView", method = RequestMethod.GET)
	private String roominView(Model model) {
		model.addAttribute("mainUrl", "occupy/roominView.jsp");

		return "template";
		// TODO Auto-generated method stub
	}
}