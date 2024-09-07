package com.digi.work.basket.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import com.digi.work.until.BCommand;

public class RemoveAction implements BCommand {

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

		if (basketMap != null) {
			String itemName = request.getParameter("itemName");

			int currentQuantity = basketMap.getOrDefault(itemName, 0);

			if (currentQuantity > 0) {
				currentQuantity--;

				if (currentQuantity == 0) {
					basketMap.remove(itemName);
				} 
//				else {
//					basketMap.put(itemName, currentQuantity);
//				}

			}
		}

		System.out.println(basketMap);
		session.setAttribute("basketMap", basketMap);

	}

}
