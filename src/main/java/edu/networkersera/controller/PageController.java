package edu.networkersera.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.networkersera.jdbc.dao.UserDaoImpl;
import edu.networkersera.model.User;


@Controller
public class PageController {
	
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@RequestMapping(value = {"/", "/home", "/index", "/aditya"})
	public ModelAndView index(@RequestParam(name="logout",required=false)String logout) {	
		System.out.println(">> PageController");
		ModelAndView mv = new ModelAndView("home");//-< page
		mv.addObject("title","Home");
		
		System.out.println("<< PageController");
		return mv;				
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about() {	
		System.out.println(">> about");
		ModelAndView mv = new ModelAndView("about");		
		
		System.out.println("<< about");
		return mv;				
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {		
		ModelAndView mv = new ModelAndView("contact");		
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);
		return mv;				
	}	
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
	    // Removes the authentication from securitycontext 		
		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * if (auth != null){ new SecurityContextLogoutHandler().logout(request,
		 * response, auth); }
		 */
		
		return "redirect:/login?logout";
	}	
	
	
	@RequestMapping(value="/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");		
		mv.addObject("errorTitle", "Aha! Caught You.");		
		mv.addObject("errorDescription", "You are not authorized to view this page!");		
		mv.addObject("title", "403 Access Denied");		
		return mv;
	}	
		
	
	
}
