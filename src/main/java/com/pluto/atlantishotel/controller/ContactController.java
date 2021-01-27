package com.pluto.atlantishotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.pluto.atlantishotel.model.Contact;

import com.pluto.atlantishotel.dao.ContactDao;

@Controller
public class ContactController {

	@Autowired
	private Environment env;
	
	@Autowired
	private ContactDao dao;
	
	// HTTP GET REQUEST - contact index
	@GetMapping("/contact/index")
	public ModelAndView contactUs() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact/index");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	// HTTP POST REQUEST - contact index
	@PostMapping("/contact/index")
	public ModelAndView contactUs(Contact contact) {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("home/index");
		 dao.save(contact);
		 return mv;
	}
	
}
