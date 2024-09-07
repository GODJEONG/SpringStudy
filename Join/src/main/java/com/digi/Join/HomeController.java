package com.digi.Join;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public String joinData(Join join) { // JOIN은 COMMAND 객체
		return "JoinComplete";
	}

	@RequestMapping(value = "/Join2")
	public ModelAndView confrimID(HttpServletRequest httpServletRequest) {
		ModelAndView mv = new ModelAndView();
		String id = httpServletRequest.getParameter("id");
		String pw = httpServletRequest.getParameter("pw");
		String pwconfirm = httpServletRequest.getParameter("pwconfirm");
		String email = httpServletRequest.getParameter("email");
		String name = httpServletRequest.getParameter("name");
		String socialsecuritynumber = httpServletRequest.getParameter("socialsecuritynumber");
		String year = httpServletRequest.getParameter("year");
		String month = httpServletRequest.getParameter("month");
		String day = httpServletRequest.getParameter("day");
		String inter = httpServletRequest.getParameter("inter");
		String intro = httpServletRequest.getParameter("intro");

		mv.addObject("id", id);
		mv.addObject("pw", pw);
		mv.addObject("pwconfirm", pwconfirm);
		mv.addObject("email", email);
		mv.addObject("name", name);
		mv.addObject("socialsecuritynumber", socialsecuritynumber);
		mv.addObject("year", year);
		mv.addObject("month", month);
		mv.addObject("day", day);
		mv.addObject("inter", inter);
		mv.addObject("intro", intro);

		mv.setViewName("JoinComplete");

		return mv;
	}

	@RequestMapping(value = "/Join3")
	public String checkID(@RequestParam("id") String id, @RequestParam("pw") String pw,
			@RequestParam("pwconfirm") String pwconfirm, @RequestParam("email") String email,
			@RequestParam("name") String name, @RequestParam("socialsecuritynumber") String socialsecuritynumber,
			@RequestParam("year") String year, @RequestParam("month") String month, @RequestParam("day") String day,
			@RequestParam("inter") String inter, @RequestParam("intro") String intro, Model model) {

		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("pwconfirm", pwconfirm);
		model.addAttribute("email", email);
		model.addAttribute("name", name);
		model.addAttribute("socialsecuritynumber", socialsecuritynumber);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("inter", inter);
		model.addAttribute("intro", intro);

		return "JoinComplete";
	}

	@RequestMapping(value = "/Join4/{id}/{pw}/{pwconfirm}/{email}/{name}/{socialsecuritynumber}/{year}/{month}/{day}/{inter}/{intro}")
	public String form4(@PathVariable String id, @PathVariable String pw, @PathVariable String pwconfirm,
			@PathVariable String email, @PathVariable String name, @PathVariable String socialsecuritynumber,
			@PathVariable String year, @PathVariable String month, @PathVariable String day, @PathVariable String inter,
			@PathVariable String intro, Model model) {

		// 데이터 유효성 검사와 처리 로직 추가

		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("pwconfirm", pwconfirm);
		model.addAttribute("email", email);
		model.addAttribute("name", name);
		model.addAttribute("socialsecuritynumber", socialsecuritynumber);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("inter", inter);
		model.addAttribute("intro", intro);

		return "JoinComplete";
	}
}
