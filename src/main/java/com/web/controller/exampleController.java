package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.dao.ExampleDao;
import com.web.dto.Example;


@Controller
@RequestMapping("/*")
public class exampleController {
	
	@Autowired
	private ExampleDao exampleDao;
	
	
	
	@RequestMapping(value="example",method=RequestMethod.GET )
	private String example(String pk_num,String name, String age,Model model) {
		List<Example> exam;
		exam = exampleDao.get();
		model.addAttribute("exam", exam);
		
		return "example";
		// TODO Auto-generated method stub

	} 
}
