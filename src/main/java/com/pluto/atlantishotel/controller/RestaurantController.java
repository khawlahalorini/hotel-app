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

	@Autowired
	private HomeController hc;

	@GetMapping("/restaurant/index")
	public ModelAndView restaurant() {
		ModelAndView mv = new ModelAndView("restaurant/detail");
		hc.setAppName(mv, env);

		return mv;
	}

	// HTTP GET REQUEST - new reservation
	@GetMapping("/restaurant/add")
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView("restaurant/add");

		hc.setAppName(mv, env);

		return mv;
	}

	// HTTP POST REQUEST - new reservation
	@PostMapping("/restaurant/add")
	public ModelAndView reservation(Restaurant restaurant) {
		dao.save(restaurant);

		ModelAndView mv = new ModelAndView("restaurant/detail");

		hc.setAppName(mv, env);

		return mv;
	}

	// HTTP GET REQUEST - handle information
	@GetMapping("/restaurant/detail")
	public ModelAndView reservationDetails(@RequestParam String phone_number) {
		List<Restaurant> restaurant = dao.findByPhoneNumber(phone_number);

		ModelAndView mv = new ModelAndView("restaurant/detail");
		mv.addObject("restaurants", restaurant);

		hc.setAppName(mv, env);

		return mv;
	}

	@GetMapping("/restaurant/delete")
	public ModelAndView reservationDelete(@RequestParam int id) {
		dao.deleteById(id);
		
		ModelAndView mv = new ModelAndView("restaurant/detail");
		mv.addObject("message", "Your reservation cancled");

		hc.setAppName(mv, env);

		return mv;
	}

	@GetMapping("/restaurant/edit")
	public ModelAndView reservationEdit(@RequestParam int id) {
		Restaurant restaurant = dao.findById(id);

		ModelAndView mv = new ModelAndView("restaurant/edit");
		mv.addObject("restaurant", restaurant);
		
		hc.setAppName(mv, env);
		
		return mv;
	}

}
