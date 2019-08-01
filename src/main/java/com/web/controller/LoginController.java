package com.web.controller;

import com.web.dto.User;
import java.util.List;
import com.web.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping("/*")
public class LoginController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="login", method = RequestMethod.GET )
	private String login(Model model) {
		List<User> user;
		user = userDao.get();
		model.addAttribute("mainUrl", "login.jsp");

		return "template";
	}

}