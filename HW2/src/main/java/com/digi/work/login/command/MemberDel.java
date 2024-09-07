package com.digi.work.login.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.LoginDAO;
import com.digi.work.until.BCommand;

public class MemberDel implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");
		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		LoginDAO logindao = new LoginDAO();

		String id = request.getParameter("id");
		int result = 0;

		try {
			result = logindao.memberDel(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(result);

		//logindao.exit();
	}

}
