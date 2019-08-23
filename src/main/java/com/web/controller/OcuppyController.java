package com.web.controller;

import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.dto.User;



@Controller
@SessionAttributes({"user","ip"})


@RequestMapping("/*")
public class OcuppyController {
	
	@RequestMapping(value="occupychk",method=RequestMethod.GET )
	private String occupychk(@SessionAttribute("user") User user) {
		
		
		
		
		
		return "template";	
	}
	@RequestMapping(value="roomin",method=RequestMethod.GET)
	private String roomin(int usercode, Model model) {
		
		//���ȣ�� ���� ���

		if(usercode<0) {//��ȸ���� ���,
			
		}else {//ȸ���� ���
			
		}
		
		
		model.addAttribute("mainUrl", "occupy/alert.jsp");
		model.addAttribute("goUrl", "roominView");
		
		return "template";
		// TODO Auto-generated method stub
	} 
	
	@RequestMapping(value="roominView",method=RequestMethod.GET)
	private String roominView(Model model) {
		model.addAttribute("mainUrl", "occupy/roominView.jsp");
		
		return "template";
		// TODO Auto-generated method stub
	} 
}