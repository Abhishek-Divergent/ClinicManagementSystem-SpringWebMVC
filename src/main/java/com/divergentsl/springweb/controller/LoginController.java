package com.divergentsl.springweb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.divergentsl.springweb.entity.Admin;
import com.divergentsl.springweb.service.LoginService;

@Controller
public class LoginController {
	private static final long serialVersionUID = 1L;
	@Autowired
	LoginService loginService;

	@PostMapping("/adminlogin")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Admin> list = loginService.adminRead();
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		for (Admin admin : list) {
			if (userName.equals(admin.getUsername()) && password.equals(admin.getPassword())) {
				ModelAndView view = new ModelAndView("AdminPanel");
				return view;
			}
		}
		return null;
	}

	@GetMapping("/adminlogin")
	String showAdmin() {
		return "AdminLogin";

	}

}
