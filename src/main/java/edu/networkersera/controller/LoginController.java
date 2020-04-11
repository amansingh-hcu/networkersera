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
public class LoginController {

	@Autowired
	UserDaoImpl userDaoImpl;
	
	@RequestMapping(value="/loginPage", method=RequestMethod.GET)
	public ModelAndView loginPage() {
		System.out.println(">> loginPage");

		ModelAndView mv= new ModelAndView();
		mv.setViewName("login");//JSP page
		mv.addObject("title", "Login");
		
		System.out.println("<< loginPage");
		return mv;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(
			@RequestParam(name = "userName") String userName,
			@RequestParam(name = "userPassword") String userPassword) {
		System.out.println(">> login");
		
		ModelAndView mv= new ModelAndView();
		User user = userDaoImpl.findByName(userName, userPassword);
		if(user.userRoleId == 1) {
			System.out.println(user.toString());
			mv.addObject("title", "Welcome");
			mv.setViewName("welcomeAdmin");
			mv.addObject("user", user);
			return mv;
		}
		if(user !=null) {
			System.out.println(user.toString());
			mv.addObject("title", "Welcome");
			mv.setViewName("welcome");
			mv.addObject("user", user);
			return mv;
		}else {
			mv.addObject("title", "Login");
			mv.setViewName("login");//
			mv.addObject("errorMessage", "Username or Password is incorrect !!");
		}
		
		System.out.println("<< login");
		return mv;
	}
	
	@RequestMapping(value="/loginOut", method=RequestMethod.GET)
	public ModelAndView loginOut() {
		System.out.println(">> loginOut");

		ModelAndView mv= new ModelAndView();
		mv.setViewName("loginOut");
		mv.addObject("title", "login Out");
		
		System.out.println("<< loginOut");
		return mv;
	}

}
