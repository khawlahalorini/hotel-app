package com.pluto.atlantishotel.dao;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pluto.atlantishotel.model.Room;
public interface RoomDao extends CrudRepository<Room, Integer> {
	public Room findById(int roomNo);
	
	 @Query("SELECT room FROM Room room WHERE room.roomType= ?1")
	 List<Room> findByRoomType(@Param("roomType") String roomType);
}