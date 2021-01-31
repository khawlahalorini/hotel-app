package com.pluto.atlantishotel.dao;

import org.springframework.data.repository.CrudRepository;

import com.pluto.atlantishotel.model.User;



public interface UserDao extends CrudRepository<User, Integer> {
	public User findByEmailAddress(String emailAddress);
}
