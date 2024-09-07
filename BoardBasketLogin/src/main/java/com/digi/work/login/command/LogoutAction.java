package com.digi.work.login.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.digi.work.until.BCommand;

public class LogoutAction implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		HttpSession session = request.getSession(false); // 새로운 세션이 생성되지 않도록 false로 설정

		if (session != null) {
			session.invalidate();
		}

	}

}
