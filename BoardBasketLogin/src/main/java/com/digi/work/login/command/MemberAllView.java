package com.digi.work.login.command;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.LoginDAO;
import com.digi.work.dto.LoginBean;
import com.digi.work.until.BCommand;



public class MemberAllView implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");

		LoginDAO logindao = new LoginDAO();
		
		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		List<LoginBean> member_all = null; 
		System.out.println("1: "+member_all);
		try {
			member_all = logindao.memberall();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("2: "+member_all);

		logindao.exit();

		request.setAttribute("member_all", member_all);
		System.out.println("3: "+member_all);
		
	}

}
