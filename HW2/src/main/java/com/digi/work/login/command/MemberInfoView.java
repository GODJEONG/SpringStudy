package com.digi.work.login.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.LoginDAO;
import com.digi.work.dto.LoginBean;
import com.digi.work.until.BCommand;

public class MemberInfoView implements BCommand {

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

		LoginBean memberinfo = new LoginBean();
		
		try {
			memberinfo = logindao.memberInfo(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//logindao.exit();

		request.setAttribute("memberinfo", memberinfo);
		System.out.println("3: " + memberinfo);
		System.out.println(memberinfo.getId());

	}

}
