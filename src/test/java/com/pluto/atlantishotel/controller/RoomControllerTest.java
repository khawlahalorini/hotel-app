package com.pluto.atlantishotel.controller;

import static org.junit.jupiter.api.Assertions.*;

import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.pluto.atlantishotel.model.Room;

class RoomControllerTest {

	
	private MockMvc moc;
	RoomController roomcontroller;
	
	@InjectMocks
    private Room room;
	@Before(value = "")
    public void initializeDummyRoom(){
      
    }

	
	/*
	 * @Before(value = "") public void init() { roomcontroller=new RoomController();
	 * 
	 * }
	 */
	
	/*
	 * @Test public void roomBooked () {
	 * 
	 * RequestBuilder re=MockMvcRequestBuilders.get("/rooms/roomb");
	 * 
	 * moc.perform(re).andExpect(status().isOk())
	 * .andExpect(forwardedUrl("redirect:/",roomcontroller.roomBooked(null)); }
	 */

}
