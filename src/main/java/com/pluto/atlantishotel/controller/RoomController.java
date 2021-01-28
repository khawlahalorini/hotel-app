package com.pluto.atlantishotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pluto.atlantishotel.dao.RoomDao;
import com.pluto.atlantishotel.model.Room;

@Controller
public class RoomController {

	
	@Autowired
	private Environment env;
	
	@Autowired
	private RoomDao dao;
	
	  @GetMapping("/rooms/roomb")
	   public ModelAndView room() {
		   
		   ModelAndView mv = new ModelAndView();
     	   mv.setViewName("rooms/roomb");
		   
		   HomeController hc = new HomeController();
		   hc.setAppName(mv, env);
		   
		   return mv;
	   }
	  
	  @PostMapping("/rooms/roomb")
		 public String roomBooked(Room room) {

			 
			 ModelAndView mv = new ModelAndView();
        	 mv.setViewName("rooms/roomb");
			 
			 HomeController hc = new HomeController();
			 hc.setAppName(mv, env);
			 
			 // Check to room is already book or not
			 
			 var it = dao.findAll();
			 
			 
			 for(Room dbRoom : it)
			 {
				 if( dbRoom.getId()== dbRoom.getId() ) {
					 mv.addObject("message", "Sorry,Room already booked");
					 return "redirect:/";
				 }
			 }
			 dao.save(room);
			 mv.addObject("message", "your booking Accepted");
			 
			 return "redirect:/";	 
	  }
}
