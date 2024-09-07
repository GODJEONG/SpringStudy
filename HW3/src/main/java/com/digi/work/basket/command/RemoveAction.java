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
		// HttpServletResponse response = (HttpServletResponse) map.get("response");

		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		HttpSession session = request.getSession();

		// Map 객체를 생성하여 key-value 형태로 데이터를 담습니다. 기존의 장바구니 정보를 세션에서 가져옵니다.
		Map<String, Integer> basketMap = (Map<String, Integer>) session.getAttribute("basketMap");

		if (basketMap != null) {
			String itemName = request.getParameter("itemName");

			int currentQuantity = basketMap.getOrDefault(itemName, 0);

			if (currentQuantity > 0) {
				currentQuantity--;

				if (currentQuantity == 0) {
					basketMap.remove(itemName);
				} else {
					basketMap.put(itemName, currentQuantity);
				}

			}
		}

		System.out.println(basketMap);
		session.setAttribute("basketMap", basketMap);

	}

}
