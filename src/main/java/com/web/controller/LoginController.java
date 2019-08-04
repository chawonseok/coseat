package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes("usercode")
@RequestMapping("/*")
public class LoginController {
	
	@RequestMapping(value="/", method = RequestMethod.GET )
	private void SetSessionAttribute(Model model) {
		model.addAttribute("usercode",-1);
		
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET )
	private String login(Model model) {
		
//		HttpRequest request;
		model.addAttribute("mainUrl", "login.jsp");
//		request.setAttribute();
		System.out.println("login function In");
		return "template";
	}

}