package com.pluto.atlantishotel.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.pluto.atlantishotel.dao.RoomDao;
import com.pluto.atlantishotel.dao.UserDao;
import com.pluto.atlantishotel.model.Room;
import com.pluto.atlantishotel.model.UserDetailsImpl;
@Controller
public class RoomController {
	@Autowired 
	private Environment env;
	
	@Autowired
	private UserDao userdao;
	
	// HTTP GET REQUEST - Room Add
	@GetMapping("/rooms/add")
	public ModelAndView addRoom() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("rooms/add");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);


		var it = userdao.findAll();
		mv.addObject("users", it);
		
		return mv;
	}
	
	@Autowired
	private RoomDao dao;
	
	// HTTP POST REQUEST - Room Add
	@PostMapping("/rooms/add")
	public String addRoom(Room room) {
		dao.save(room);
		
		return "redirect:/rooms/index";
	}
	
	// HTTP GET REQUEST - Rooms roomb
	@GetMapping("/rooms/roomb")
	public ModelAndView getRoom() {		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("rooms/roomb");
		
		var it = userdao.findAll();
		mv.addObject("users", it);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	// HTTP GET REQUEST - Rooms index
		@GetMapping("/rooms/index")
		public ModelAndView getindex() {
			var it = dao.findAll();
			ModelAndView mv = new ModelAndView();

Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    mv.addObject("emailAddress", ((UserDetailsImpl) authentication.getPrincipal()).getUsername());  
		}
		    
			mv.setViewName("rooms/index");
			mv.addObject("rooms", it);
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			return mv;
		}
			
	// HTTP GET REQUEST - user Detail
	@GetMapping("/rooms/detail")
	public ModelAndView roomDetails(@RequestParam int id) {		
		System.out.println(id);

		Room room = dao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("rooms/detail");
		mv.addObject("room", room);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
		
	}
	
	// HTTP GET REQUEST - Rooms Edit
	@GetMapping("/rooms/edit")
	public ModelAndView editRoom(@RequestParam int id) {
		Room room = dao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("rooms/edit");
		mv.addObject("room", room);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);

		var it = userdao.findAll();
		mv.addObject("users", it);
		

		return mv;
	}
	
	// HTTP GET REQUEST - room Delete
	@GetMapping("/rooms/delete")
	public String deleteRoom(@RequestParam int id) {
		
		dao.deleteById(id);
		return "redirect:/rooms/roomb";
	}
	
}

