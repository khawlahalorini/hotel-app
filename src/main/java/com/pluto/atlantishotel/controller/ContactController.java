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

	@Autowired
	private HomeController hc;

	// HTTP GET REQUEST - contact
	@GetMapping("/contact/index")
	public ModelAndView contactUs() {
		ModelAndView mv = new ModelAndView("contact/index");
		hc.setAppName(mv, env);
		
		return mv;
	}

	// HTTP POST REQUEST - contact
	@PostMapping("/contact/index")
	public ModelAndView contactUs(Contact contact) {
		dao.save(contact);

		ModelAndView mv = new ModelAndView("contact/index");
		mv.addObject("message", "Thanks for contacting us");

		hc.setAppName(mv, env);

		return mv;
	}
}
