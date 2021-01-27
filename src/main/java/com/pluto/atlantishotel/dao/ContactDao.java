package com.pluto.atlantishotel.dao;

import org.springframework.data.repository.CrudRepository;

import com.pluto.atlantishotel.model.Contact;

public interface ContactDao extends CrudRepository<Contact, Integer> {

}
