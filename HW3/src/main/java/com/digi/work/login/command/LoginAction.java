package com.digi.work.login.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.digi.work.dao.LoginDAO;
import com.digi.work.dto.LoginBean;
import com.digi.work.until.BCommand;

public class LoginAction implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");

		LoginDAO logindao1 = new LoginDAO();
		LoginDAO logindao2 = new LoginDAO();

		LoginBean logindata = new LoginBean();

		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");

		System.out.println("test1");

		try {
			request.setCharacterEncoding("euc-kr");
			System.out.println("test2");
			
			if (!logindao1.membercheck(user_id, user_pw)) {
				System.out.println("회원이 아닙니다.");
			    model.addAttribute("errorMessage", "ID 혹은 PW를 다시 입력하세요.");
                return;
			}

			//logindao1.exit();
			System.out.println("test3");

			logindata = logindao2.getInfo(user_id);
			System.out.println(logindata);
			//logindao2.exit();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("test2");

		HttpSession session = request.getSession();
		session.setAttribute("user_info", logindata);

		System.out.println("test3");

	}

}
