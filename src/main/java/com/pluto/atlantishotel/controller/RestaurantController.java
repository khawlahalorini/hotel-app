package com.pluto.atlantishotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		mv.setViewName("restaurant/detail");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
	}
	
	// HTTP GET REQUEST - new reservation
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
		dao.save(restaurant);
		
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("restaurant/detail");
		 
		 HomeController hc = new HomeController();
		 hc.setAppName(mv, env);
		 
		 return mv;
	}
	
	@GetMapping("/restaurant/detail")
	public ModelAndView reservationDetails(@RequestParam String phone_number) {
		List<Restaurant> restaurant = dao.findByPhoneNumber(phone_number);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("restaurant/detail");
		mv.addObject("restaurants", restaurant);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	
	@GetMapping("/restaurant/delete")
	public ModelAndView reservationDelete(@RequestParam int id) {
		
			 ModelAndView mv = new ModelAndView();
			 mv.setViewName("restaurant/detail");
			 var it = dao.findById(id); 
			 if(it != null) {
				 dao.deleteById(id);
				 mv.addObject("message", "Your reservation cancled");
			 }
			 HomeController hc = new HomeController();
			 hc.setAppName(mv, env);
			 
		     return mv; 
	}
	
	@GetMapping("/restaurant/edit")
	public ModelAndView reservationEdit(@RequestParam int id) {
		
		     Restaurant restaurant = dao.findById(id);
		     
			 ModelAndView mv = new ModelAndView();
			 mv.setViewName("restaurant/edit");
			 mv.addObject("restaurant", restaurant);
			 
			 HomeController hc = new HomeController();
			 hc.setAppName(mv, env);
			 
		     return mv; 
	}
	
	
}
