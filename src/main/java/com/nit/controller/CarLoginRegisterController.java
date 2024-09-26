package com.nit.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.dao.UserDao;
import com.nit.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CarLoginRegisterController {

	@Autowired
	private UserDao dao;

	@GetMapping("/userlogin")
	public String userlogin() {
		return "login";
	}

	@GetMapping("/userregister")
	public String userregister(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	

	@RequestMapping("/register")
	public String register(@Validated User user, Errors result, Model model) {
		if (result.hasErrors()) {
			return "register";
		}
		int registerCount = dao.getRegisterInfo(user.getEmail(), user.getAadharNo());
		if (registerCount > 0) {

			model.addAttribute("message", "Your Email Or Aadhar Already Present In Our System");
			return "register";
		}

		try {
			dao.userRegistration(user);
			model.addAttribute("message", "Registration Complete Please Login");
		} catch (Exception e) {
			System.out.println(e);
			return "somethingWrong";
		}

		return "login";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest req, Model model) {
		try {
			User user = dao.login(req.getParameter("email"), req.getParameter("password"));
			if (user == null) {
				model.addAttribute("message", "invalid login credentials");
				return "login";
			}
			Map<String, Object> rideMap = new LinkedHashMap<String, Object>();
			rideMap.put("user", user);
			HttpSession session = req.getSession(true);
			session.setMaxInactiveInterval(3600);
			session.setAttribute("AllInfo", rideMap);

			return "login_options";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/forgotPasswordPage")
	public String forgotPasswordPage() {
		return "forgetpassword";
	}
	
	@RequestMapping("/forgotPassWord")
	public String forgotPassWord(HttpServletRequest req,Model model) {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		dao.changePassword(email, password);
		model.addAttribute("pass", "Password Update Successfully");
		
		return "forgetpassword";
	}

	@RequestMapping("/options")
	public String options(){
		return "login_options";
	}
	

	
}
