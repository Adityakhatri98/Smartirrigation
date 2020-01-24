package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.CustomerBean;
import com.dao.UserDao;

@Controller
public class UserController implements ErrorController{
	@Autowired
	UserDao dao;
	private static final String PATH = "/error";
	private Boolean userAuth = false;
	
	@GetMapping(value = { "/" })
	public String getPage() {
		return "index";
	}
	
	@GetMapping(value= {"/profile"})
	public String getProfile() {
		return "profile";
	}
	@GetMapping(value = { "/index" })
	public String get() {
		System.out.println("dao = " + dao);
		return "index";
	}

	@GetMapping(value = { "/login" })
	public String getlogin() {
		return "login";
	}

	@GetMapping(value = { "/signup" })
	public String getSignup() {
		return "signup";
	}

	@PostMapping(value = { "/signup" })
	public String getSignup(CustomerBean customerBean) {
		int i = dao.insertUser(customerBean);
		if (i > 0) {
			return "login";
		} else {
			return "signup";
		}
	}

	@PostMapping(value = { "/login" })
	public String getLogin(CustomerBean customerBean, HttpSession session) {
		Boolean check = dao.getUser(customerBean);
		if (check) {
			session.setAttribute("user", customerBean);
			System.out.println(customerBean);
			userAuth = true;
			return "index";
		} else {
			userAuth = false;
			return "login";
		}
	}

	@GetMapping(value = { "/bar" })
	public String getChart() 
	{	
		if(userAuth==true)
		{
			return "bar";
		}
		else {
			return "login";
		}
	}

	@GetMapping(value = { "/report" })
	public String getReport() 
	{
		if(userAuth==true)
		{
			return "report";
		}
		else {
			return "login";
		}
	}



	@GetMapping(value = { "/logout" })
	public String getLogout(HttpSession session, HttpServletRequest request) {
		session = request.getSession(false);
		if (session != null) {
			session.removeAttribute("user");
			session.setAttribute("user", null);
			session.invalidate();
			userAuth = false;
			return "index";
		}
		else {
			
			return "login";
		}
	}

	@Override
	public String getErrorPath() 
	{		
		return "PATH";
	}
	
	 @GetMapping(value = PATH)
	 public String error() {
	  return "404";
	 }
}
