package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.CustomerBean;
import com.dao.UserDao;

@RestController
public class UserRestController {
	
	@Autowired
	UserDao dao;
	
	@PostMapping(value="/user")
	public CustomerBean insertUser(CustomerBean bean)
	{
		int i = dao.insertUser(bean);
		if (i > 0) {
			System.out.println(i);
			return bean;
		} else {
			return null;
		}
	}
	
	@PostMapping(value="/1")
	public CustomerBean getUser(CustomerBean bean)
	{
		 CustomerBean customerBean = dao.getUserRest(bean);
		if (customerBean!=null) {
			System.out.println(customerBean);
			return customerBean;
		}
		else {
			return null;
		}
	}
	
}
