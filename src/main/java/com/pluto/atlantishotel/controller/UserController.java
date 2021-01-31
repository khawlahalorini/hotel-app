package com.pluto.atlantishotel.controller;


import java.util.ArrayList;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.pluto.atlantishotel.dao.UserDao;
import com.pluto.atlantishotel.model.User;
import com.pluto.atlantishotel.dao.UserDao;



@Controller
public class UserController {
	
	@Autowired
	private Environment env;
	
	@Autowired
	private UserDao dao;

	
	
	 @GetMapping("/hello")
	 public String hello() {
		 return "hi";
	 }
	 
		private ArrayList<User> findAllStub() {
			// TODO Auto-generated method stub
			ArrayList<User> retList = new ArrayList<User>();
	 	    retList.add(new User("12345", "a@b"));
		    retList.add(new User("12345", "g@a")); 
			return retList;
		}
	 


	// To load the registration form
	   @GetMapping("/user/registration")
	   public ModelAndView registration() {
		   
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("user/registration");
		   
		   HomeController hc = new HomeController();
		   hc.setAppName(mv, env);
		   
		   return mv;
	   }
	
	// To post the registration form
	 @PostMapping("/user/registration")
	 public ModelAndView registration(User user) {

		 
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("home/index");
		 
		 HomeController hc = new HomeController();
		 hc.setAppName(mv, env);
		 
		 // Check to user is already registered or not
		 
		 var it = dao.findAll();
		 System.out.println(it);

		 for(User dbUser : it) {
			 System.out.println(dbUser.getEmailAddress());
			 if(dbUser.getEmailAddress().equals(user.getEmailAddress())) {
				 mv.addObject("message", "User already exists");
				 return mv;
			 }
		 }
		 
		 
		 // Password Encryption
		 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		 String newPassword = bCrypt.encode(user.getPassword());
		 user.setPassword(newPassword);
		 
		 dao.save(user);
		 mv.addObject("message", "User registered successfully");
		 
		 return mv;
		 
	 }

	
	// To load the login form
		@GetMapping("/index")
		public ModelAndView login() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home/index");
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			return mv;
		}
	

		// HTTP GET REQUEST - user Index
		@GetMapping("/user/index")
		public ModelAndView getAuthor() {
			var it = dao.findAll();
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home/index");
			mv.addObject("users", it);
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			return mv;
		}
		
//<<<<<<< HEAD
//		// HTTP GET REQUEST - Author Detail
//		@GetMapping("/user/detail")
//		public ModelAndView authorDetails(@RequestParam int id) {
//			System.out.println(id);
//			
//			Optional<User> user = dao.findById(id);
//			
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("home/index");
//=======
	
		@GetMapping("/profile/edit")
		public ModelAndView editUser(@RequestParam String email) {
			User user = dao.findByEmailAddress(email);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("profile/edit");
			mv.addObject("user", user);
			mv.addObject("message", "hi there");
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			return mv;
			
		}

		@PostMapping("/profile/edit")
		public ModelAndView edit(User user) {
			 // Password Encryption
			 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
			 String newPassword = bCrypt.encode(user.getPassword());
			 user.setPassword(newPassword);
			dao.save(user);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home/index");
			mv.addObject("user", user);
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);

			return mv;
		}  
		
//		// HTTP GET REQUEST - user Delete
//		@GetMapping("/user/delete")
//		public String deleteAuthor(@RequestParam int id) {
//			dao.deleteById(id);
//			return "redirect:/home/index";
//		}
//		 
			
	

		// To load the about page
		@GetMapping("/about/index")
		public ModelAndView about() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("about/index");
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			return mv;
		}
		 
}

