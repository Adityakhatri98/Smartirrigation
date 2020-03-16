package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.CustomerBean;
import com.dao.UserDao;

@Controller
public class UserController implements ErrorController {
	@Autowired
	UserDao dao;

	private static final String PATH = "/error";
	private Boolean userAuth = false;

	@GetMapping(value = { "/" })
	public String getPage() {
		return "index";
	}

	@GetMapping(value = { "/index" })
	public String get() {
		System.out.println("dao = " + dao);
		return "index";
	}

	@GetMapping(value = { "/profile" })
	public String getProfile() {
		return "profile";
	}

	@GetMapping(value = { "/update" })
	public String getUpdate(CustomerBean customerBean, Model model, HttpSession session) {
		session.setAttribute("user", customerBean);
		model.addAttribute("customerBean", customerBean);
		return "signup";

	}

	@GetMapping(value = { "/login" })
	public String getlogin(Model model) {
		model.addAttribute("customerBean", new CustomerBean());
		return "login";
	}

	@GetMapping(value = { "/signup" })
	public String getSignup(Model model) {
		model.addAttribute("customerBean", new CustomerBean());
		return "signup";
	}

	@PostMapping(value = { "/signup" })
	public String getSignup(@ModelAttribute("customerBean") @Valid CustomerBean customerBean, BindingResult result,
			Model model, HttpServletRequest request) {
		if (result.hasErrors()) {
			return "signup";
		} else {
			int i = dao.insertUser(customerBean);
			if (i > 0) {
				return "redirect:login";
			} else {
				request.setAttribute("email", "Email is already registred !!");
				return "signup";
			}
		}
	}

	@PostMapping(value = { "/login" })
	public String getLogin(@ModelAttribute("customerBean") @Valid CustomerBean customerBean, BindingResult result,
			Model model, HttpSession session, HttpServletRequest request) {

		Boolean check = dao.getUser(customerBean);
		if (check) {
			session.setAttribute("user", customerBean);
			userAuth = true;
			return "index";
		} else if (result.hasErrors()) {
			userAuth = false;
			request.setAttribute("error", "Email or Password is incorrect !!");
			return "login";
		} else {
			return "redirect:login";
		}
	}

	@GetMapping(value = { "/user/{email}" })
	public String getUser(@PathVariable("email") String email, Model model) {
		CustomerBean customerBean = dao.getUser(email);
		model.addAttribute("customerBean", customerBean);
		return "update";
	}

//	@GetMapping(value = { "/user" })
//	public String getUser(Model model, HttpSession session) {
//		CustomerBean temp = (CustomerBean) (session.getAttribute("user"));
//		System.out.println("temp"+temp);
//		if (temp != null) {
//			CustomerBean bean = dao.getUser(temp.getEmail());
//			model.addAttribute("user", bean);
//			return "update";
//		}
//		else {
//			return "profile";
//		}a
//	}
//
	@PostMapping(value = { "/update" })
	public String getPage(@ModelAttribute("customerBean") @Valid CustomerBean customerBean, BindingResult result,
			Model model, HttpSession session) {
		int i = dao.updateUser(customerBean);
		session.setAttribute("user", customerBean);
		System.out.println("in Session : " + customerBean);
		if (result.hasErrors()) {
			System.out.println("inerror");
			return "update";
		} else if (i == 1) {
			session.setAttribute("user", customerBean);
			System.out.println("final : " + customerBean);
			return "profile";
		} else {
			return "update";
		}
	}

//	@PutMapping(value = { "/update" })
//	public String getUser(@ModelAttribute("customerBean") @Valid CustomerBean bean, 
//			HttpSession session,BindingResult result) {
//		System.out.println("in user");
//		int i = dao.updateUser(bean);
//		if (i == 1) {
//			session.setAttribute("user", bean);
//			System.out.println("final : " + bean);
//			return "profile";
//		} else if(result.hasErrors()){
//			System.out.println("inerror");
//			return "update";
//		}
//		else {
//			return "redirect:update";
//		}
//	}

	@GetMapping(value = { "/bar" })
	public String getChart() {
		if (userAuth == true) {
			return "bar";
		} else {
			return "redirect:login";
		}
	}

	@GetMapping(value = { "/report" })
	public String getReport() {
		if (userAuth == true) {
			return "report";
		} else {
			return "redirect:login";
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
		} else {

			return "redirect:login";
		}
	}

	@Override
	public String getErrorPath() {
		return "PATH";
	}

	@GetMapping(value = PATH)
	public String error() {
		return "404";
	}
}
