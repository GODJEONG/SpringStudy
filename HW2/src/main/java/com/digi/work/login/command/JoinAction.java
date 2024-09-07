package com.digi.work.login.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.LoginDAO;
import com.digi.work.dto.LoginBean;
import com.digi.work.until.BCommand;

public class JoinAction implements BCommand {


	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
      //HttpServletRequest response = (HttpServletRequest) map.get("response");
		
		LoginDAO logindao = new LoginDAO();
		LoginBean logindata = new LoginBean();
	
		boolean result = false;

		try {

			logindata.setId(request.getParameter("id"));
			logindata.setPw(request.getParameter("pw"));
			logindata.setPwconfirm(request.getParameter("pwconfirm"));
			logindata.setEmail(request.getParameter("email"));
			logindata.setName(request.getParameter("name"));
			logindata.setSocialsecuritynumber(request.getParameter("socialsecuritynumber"));
			logindata.setYear(request.getParameter("year"));
			logindata.setMonth(request.getParameter("month"));
			logindata.setDay(request.getParameter("day"));
			logindata.setInter(request.getParameterValues("inter"));
			logindata.setIntro(request.getParameter("intro"));

			System.out.println(logindata.getId());
			System.out.println(logindata.getPw());
			System.out.println(logindata.getName());
			System.out.println(logindata.getPwconfirm());
			System.out.println(logindata.getEmail());
			System.out.println(logindata.getSocialsecuritynumber());
			System.out.println(logindata.getYear());
			System.out.println(logindata.getMonth());
			System.out.println(logindata.getDay());
			System.out.println(logindata.getInter());
			System.out.println(logindata.getIntro());

			result = logindao.memberInsert(logindata);

			if (result == false) {
				System.out.println("회원가입 실패");
			}
			System.out.println("회원가입 성공");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}
