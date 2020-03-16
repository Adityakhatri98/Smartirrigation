package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.ApiError;
import com.bean.CustomerBean;
import com.dao.UserDao;

@RestController
public class UserRestController {

	@Autowired
	UserDao dao;

	@PostMapping(value = "/user")
	public ResponseEntity<CustomerBean> insertUser(CustomerBean bean) {

		int i = dao.insertUser(bean);
		if (i > 0) {
			return new ResponseEntity<CustomerBean>(bean, HttpStatus.OK);
		} else {
			return null;
		}
	}

	@PostMapping(value = "/email")
	public ResponseEntity<ApiError> CheckEmail(CustomerBean bean) {
		System.out.println(dao.checkEmail(bean));
		if (dao.checkEmail(bean)) {
			ApiError error = new ApiError(String.valueOf(HttpStatus.CONFLICT).split(" ")[0],"Email Is already Registred");
			return new ResponseEntity<>(error,HttpStatus.OK);
			
		} else {
			ApiError error = new ApiError(String.valueOf(HttpStatus.OK).split(" ")[0],"Done");
			return new ResponseEntity<ApiError>(error,HttpStatus.OK);
		}
	}

	@PostMapping(value = "/1")
	public CustomerBean getUser(CustomerBean bean) {
		CustomerBean customerBean = dao.getUserRest(bean);
		if (customerBean != null) {
			System.out.println(customerBean);
			return customerBean;
		} else {
			return null;
		}
	}

}
