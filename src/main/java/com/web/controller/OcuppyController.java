package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("/*")
public class OcuppyController {
	
	@RequestMapping(value="occupychk",method=RequestMethod.GET )
	private String example() {
		System.out.println("³ª¿Í¶ù");
		return "template";
		// TODO Auto-generated method stub

	} 
}