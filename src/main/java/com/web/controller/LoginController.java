package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping("/*")
public class LoginController {
	@RequestMapping(value="login", method = RequestMethod.GET )
	private String login(Model model) {
		
//		HttpRequest request;
		model.addAttribute("mainUrl", "login.jsp");
//		request.setAttribute();
		System.out.println("login function In");
		return "template";
	}

}