package com.pluto.atlantishotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pluto.atlantishotel.dao.RestaurantDao;
import com.pluto.atlantishotel.model.Restaurant;

@Controller
public class RestaurantController {
	@Autowired
	private Environment env;
	
	@Autowired
	private RestaurantDao dao;
	
	
	
	
	@GetMapping("/restaurant/index")
	public ModelAndView restaurant() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("restaurant/index");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	// HTTP GET REQUEST - restaurant
	@GetMapping("/restaurant/add")
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("restaurant/add");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	// HTTP POST REQUEST - restaurant
	@PostMapping("/restaurant/add")
	public ModelAndView reservation(Restaurant restaurant) {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("restaurant/index");
		 dao.save(restaurant);
		 return mv;
	}
}
