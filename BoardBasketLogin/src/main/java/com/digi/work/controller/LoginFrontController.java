package com.digi.work.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.digi.work.login.command.JoinAction;
import com.digi.work.login.command.LoginAction;
import com.digi.work.login.command.LogoutAction;
import com.digi.work.login.command.MemberAllView;
import com.digi.work.login.command.MemberDel;
import com.digi.work.login.command.MemberInfoView;
import com.digi.work.until.BCommand;
import com.digi.work.until.Constant;

@Controller
public class LoginFrontController {

	BCommand command = null;

	private JdbcTemplate template;

	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}

	@RequestMapping("/LoginForm")
	public String showLoginForm() {
		return "join/LoginForm";
	}

	@RequestMapping("/LoginAction")
	public String loginAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new LoginAction();

		command.execute(model);

		return "join/Main";
	}

	@RequestMapping("/Joinview")
	public String showJoinForm() {
		return "join/JoinForm";
	}

	@RequestMapping("/JoinAction")
	public String joinAction(HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new JoinAction();
		command.execute(model);

		return "join/LoginForm";
	}

	@RequestMapping("/Main")
	public String showMain() {
		return "join/Main";
	}

	@RequestMapping("/Shop")
	public String showShop() {
		return "basket/Shop";
	}

	@RequestMapping("/Logout")
	public String logoutAction(HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new LogoutAction();
		command.execute(model);

		return "join/LoginForm";
	}

	@RequestMapping("/Adminview")
	public String adminView(HttpServletRequest request, HttpServletResponse response, Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new MemberAllView();
		command.execute(model);

		return "redirect:AdminAction";
	}

	@RequestMapping("/AdminAction")
	public String showAdminAction() {
		return "join/Member_List";
	}

	@RequestMapping("/Infoview")
	public String infoView(HttpServletRequest request, HttpServletResponse response, Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new MemberInfoView();
		command.execute(model);

		return "redirect:InfoAction";
		// return "Member_Info";
	}

	@RequestMapping("/InfoAction")
	public String infoAction() {
		return "join/Member_Info";
	}

	@RequestMapping("/MemberDel")
	public String memberDelete(HttpServletRequest request, HttpServletResponse response, Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new MemberDel();
		command.execute(model);

		return "redirect:Adminview";
	}
}
