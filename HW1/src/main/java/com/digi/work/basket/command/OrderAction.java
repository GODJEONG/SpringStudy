package com.digi.work.basket.command; 
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.digi.work.until.BCommand;


public class OrderAction implements BCommand {

	@Override
	public void execute(Model model) {
	
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		HttpSession session = request.getSession();
		Map<String, Integer> basketMap = (Map<String, Integer>) session.getAttribute("basketMap");

		if (basketMap == null) {
			basketMap = new HashMap<String, Integer>();
		}

		int egg = Integer.parseInt(request.getParameter("egg"));
		int dak = Integer.parseInt(request.getParameter("dak"));
		int tomato = Integer.parseInt(request.getParameter("tomato"));
		int banana = Integer.parseInt(request.getParameter("banana"));

		System.out.println(egg);
		System.out.println(dak);
		System.out.println(tomato);
		System.out.println(banana);

		if (egg != 0) {
			basketMap.put("egg", basketMap.getOrDefault("egg", 0) + egg);
		}
		if (dak != 0) {
			basketMap.put("dak", basketMap.getOrDefault("dak", 0) + dak);
		}
		if (tomato != 0) {
			basketMap.put("tomato", basketMap.getOrDefault("tomato", 0) + tomato);
		}
		if (banana != 0) {
			basketMap.put("banana", basketMap.getOrDefault("banana", 0) + banana);
		}

		System.out.println(basketMap);
		session.setAttribute("basketMap", basketMap);

	}

}
