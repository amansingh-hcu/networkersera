package edu.networkersera.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.networkersera.jdbc.dao.UserDaoImpl;
import edu.networkersera.model.User;

@Controller
public class RegistrationController {

	@Autowired
	UserDaoImpl userDaoImpl;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerGet() {
		System.out.println(">> registerGet");
		ModelAndView mv = new ModelAndView("register");		
		//User user = userDaoImpl.findById(1);System.out.println(user.toString());
		System.out.println("<< registerGet");
		return mv;				
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView registerUser(
			@RequestParam(name = "userName") String userName,
			@RequestParam(name = "userEmail") String userEmail,
			@RequestParam(name = "userPassword") String userPassword) {

		System.out.println(">> registerUser");
		ModelAndView mv = new ModelAndView();		

		User user = new User();
		user.userName = userName;
		user.userEmail = userEmail;
		user.userPassword = userPassword;
		System.out.println(user.toString());

		int userId = userDaoImpl.register(user, 1);//1 for Admin
		
		if(userId == 0) {
			System.out.println("Failed to register user : "+ user.userName);
		}else {
			System.out.println(user.userName + " has been registered successfully");
			mv.setViewName("welcome");
			user.userId = userId;
			mv.addObject("user", user);
		}
		System.out.println("<< registerUser");
		return mv;				
	}
	
	@RequestMapping(value = "/registerStudent", method = RequestMethod.POST)
	public ModelAndView registerStudent(
			@RequestParam(name = "userName") String userName,
			@RequestParam(name = "userEmail") String userEmail,
			@RequestParam(name = "userPassword") String userPassword) {

		System.out.println(">> registerStudent");
		ModelAndView mv = new ModelAndView();		

		User user = new User();
		user.userName = userName;
		user.userEmail = userEmail;
		user.userPassword = userPassword;
		System.out.println(user.toString());

		int userId = userDaoImpl.register(user, 1);//1 for Admin
		
		if(userId == 0) {
			System.out.println("Failed to register student : "+ user.userName);
		}else {
			System.out.println(user.userName + " has been registered successfully");
			mv.setViewName("welcome");
			user.userId = userId;
			mv.addObject("user", user);
		}
		System.out.println("<< registerStudent");
		return mv;				
	}
}
