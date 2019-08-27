package com.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes("usercode")
@RequestMapping("/*")
public class LoginController {
	
	@RequestMapping(value="/main", method = RequestMethod.GET )
	private String SetSessionAttribute(Model model) {
		int val = -1;
		model.addAttribute("mainUrl","main.jsp");
		model.addAttribute("usercode",val); 
		
		return "template";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET )
	private String login(Model model) {
		model.addAttribute("mainUrl", "login/login.jsp");
		System.out.println("login function In");
		return "template";
	}

}