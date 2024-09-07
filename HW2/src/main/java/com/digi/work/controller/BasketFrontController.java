package com.digi.work.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.digi.work.basket.command.*;
import com.digi.work.until.BCommand;
import com.digi.work.until.Constant;

@Controller
public class BasketFrontController {

	BCommand command = null;

	private JdbcTemplate template;

	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	@RequestMapping("/Shop")
	public String Shop() {
		return "basket/Shop";
	}
	
	@RequestMapping("/basketview")
	public String basketview() {
		return "basket/Basket";
	}
	
	@RequestMapping("/OrderAction")
	public String OrderAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new OrderAction();

		command.execute(model);

		return "redirect:basketview";
	}
	
	@RequestMapping("/RemoveAction")
	public String RemoveAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new RemoveAction();

		command.execute(model);

		return "redirect:basketview";
	}
	
	@RequestMapping("/OrderInsert")
	public String OrderInsert(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new OrderInsert();

		command.execute(model);

		return "redirect:Shop";
	}
	
	@RequestMapping("/OrderList")
	public String OrderList(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new OrderList();

		command.execute(model);

		return "basket/Order";
	}
	
//	@RequestMapping("/OrderView")
//	public String OrderView() {
//		return "basket/Order";
//	}
	
}
