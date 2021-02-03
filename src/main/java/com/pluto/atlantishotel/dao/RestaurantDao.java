package com.pluto.atlantishotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pluto.atlantishotel.model.Restaurant;



public interface RestaurantDao extends CrudRepository<Restaurant, Integer> {
     public Restaurant findById(int id);
     
	 @Query("SELECT restaurant FROM Restaurant restaurant WHERE restaurant.phone_number= ?1")
	 List<Restaurant> findByPhoneNumber(@Param("phone_number") String phone_number);
    
}
