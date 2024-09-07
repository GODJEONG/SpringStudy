package com.digi.work.basket.command; 


import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.digi.work.dao.BasketDAO;
import com.digi.work.until.BCommand;



public class OrderInsert implements BCommand {

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
		BasketDAO basketdao = new BasketDAO();
		String user_id= (String) session.getAttribute("user_id");

		Map<String, Integer> basketMap = (Map<String, Integer>) session.getAttribute("basketMap");

		if (basketMap == null) {
			basketMap = new HashMap<String, Integer>();
		}

		int egg = basketMap.containsKey("egg") ? basketMap.get("egg") : 0;
		int dak = basketMap.containsKey("dak") ? basketMap.get("dak") : 0;
		int tomato = basketMap.containsKey("tomato") ? basketMap.get("tomato") : 0;
		int banana = basketMap.containsKey("banana") ? basketMap.get("banana") : 0;

		System.out.println(user_id);
		System.out.println(egg);
		System.out.println(dak);
		System.out.println(tomato);
		System.out.println(banana);

		if (egg != 0) {
			basketdao.OrderInsert(user_id, "계란", egg);
		}
		if (dak != 0) {
			basketdao.OrderInsert(user_id, "닭가슴살", dak);
		}
		if (tomato != 0) {
			basketdao.OrderInsert(user_id, "토마토", tomato);
		}
		if (banana != 0) {
			basketdao.OrderInsert(user_id, "바나나", banana);
		}

		basketMap = new HashMap<String, Integer>();
		session.setAttribute("basketMap", basketMap);

	}

}
