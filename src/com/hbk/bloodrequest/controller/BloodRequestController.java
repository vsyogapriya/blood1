package com.hbk.bloodrequest.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hbk.bloodrequest.model.Hospital;
import com.hbk.bloodrequest.service.BloodRequestService;

@Controller
public class BloodRequestController {
	@Autowired
	private BloodRequestService bloodRequestService;

	@RequestMapping(value="/index")
	public String doRedirect() {
		return "home";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String doSignUp(HttpServletRequest request, @ModelAttribute Hospital hospital, Map<String, String> map) {
		Hospital newHospital = bloodRequestService.doSignup(hospital);
		if(newHospital == null) {
			map.put("error", "Email id already exist !");
			return "error";
		}
		request.getSession().setAttribute("user", newHospital.getName());
		map.put("email", newHospital.getEmail());
		map.put("name", newHospital.getName());
		return "profile";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(HttpServletRequest request, @ModelAttribute Hospital hospital, Map<String, String> map) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			System.out.println("Not null");
			return "profile";
		}
		System.out.println("Not null");
		Hospital hospitalRef = bloodRequestService.doLogin(hospital);
		if(hospitalRef == null) {
			map.put("error", "Email or password is incorrect");
			return "error";
		}
		System.out.println(hospitalRef);
		map.put("email", hospitalRef.getEmail());
		map.put("name", hospitalRef.getName());
		return "profile";
	}
	
	@RequestMapping("/logout")
	public String doLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
		}
		return "home";
	}
}
