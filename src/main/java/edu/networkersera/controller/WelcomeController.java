package edu.networkersera.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.networkersera.model.User;

@Controller
public class WelcomeController {

	@RequestMapping(value = "/welcome")
	public ModelAndView welcome(@ModelAttribute("user") User user,
		      BindingResult result, Model model) {	
		System.out.println(">> welcome");
		
		ModelAndView mv = new ModelAndView("welcome");		
		mv.addObject("title", "Welcome");
		mv.addObject("user", user);
		System.out.println(user.toString());
		
		System.out.println("<< welcome");
		return mv;				
	}
}
