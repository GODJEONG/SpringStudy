package com.digi.ex1_0614;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digi.ex1_0614.dao.Student;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/index")
	public String index() { 
		return "index";
	}
	
	@RequestMapping(value = "/studentCheck")
	public String studentRedirect(@ModelAttribute("studentinfo") Student student) { 
		
		if ("abc".equals(student.getName())) {
            return "studentOk";
        } else {
            return "redirect:/studentNg";
        }
	}
	
	@RequestMapping(value = "/studentOk")
	public String studentOk(Model model) { 
		return "studentOk";
	}
	
	@RequestMapping(value = "/studentNg")
	public String studentNg(Model model) { 
		return "studentNg";
	}
	
	@RequestMapping(value = "/studentURL1")
	public String studentURL1(Model model) { 
		return "redirect:http://localhost:8080/ex1_0614/studentURL1.jsp";
	}

	@RequestMapping(value = "/studentURL2")
	public String studentURL2(Model model) { 
		return "redirect:http://localhost:8080/ex1_0614/studentURL2.jsp";
	}

	@RequestMapping(value = "/studentURL11")
	public String studentURL11(Model model) { 
		return "redirect:studentURL1";
	}

	
	
}
