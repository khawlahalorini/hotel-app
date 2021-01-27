package com.pluto.atlantishotel.dao;

import org.springframework.data.repository.CrudRepository;

import com.pluto.atlantishotel.model.Room;


public interface RoomDao extends CrudRepository<Room, Integer> {
	public Room findById(int id);
}