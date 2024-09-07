package com.digi.confirm;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StudentController {

	@RequestMapping(value = "/student1", method = RequestMethod.GET)
	public String student1() {		
		return "CreatePage";
	}

	@RequestMapping(value = "/student2")
	public String student2( Student student) {		
		return "CreateDonePage";
	}
	
	
//	@RequestMapping(value = "/student3")
//	public String student3(Student student, BindingResult result) {		
//		
//		String page ="CreateDonePage";
//		
//		StudentValidator validator = new StudentValidator();
//		validator.validate(student,result);
//		if(result.hasErrors()) {
//			page= "CreatePage" ;
//		}
//		
//		return page;
//	}

	@RequestMapping(value = "/student3")
	public String student3(@Valid Student student, BindingResult result) {		
		
		String page ="CreateDonePage";
		
		if(result.hasErrors()) {
			page= "CreatePage" ;
		}
		
		return page;
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new StudentValidator());
	}
	
}
