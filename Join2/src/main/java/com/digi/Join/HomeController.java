package com.digi.Join;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.digi.Join.Form.Join;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String JoinForm() {
		return "JoinForm";
	}

	@RequestMapping(value = "/Join1")
	public String student3(@Valid Join join, BindingResult result) {

		String page = "JoinComplete";

		if (result.hasErrors()) {
			page = "JoinForm";
		}

		return page;
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new JoinValidator());
	}

}
