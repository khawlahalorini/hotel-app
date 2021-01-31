package com.pluto.atlantishotel.dao;

import org.springframework.data.repository.CrudRepository;

import com.pluto.atlantishotel.model.Restaurant;



public interface RestaurantDao extends CrudRepository<Restaurant, Integer> {

}
