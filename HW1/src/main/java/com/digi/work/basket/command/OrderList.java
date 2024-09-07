package com.digi.work.basket.command;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.digi.work.dao.BasketDAO;
import com.digi.work.dto.BasketBean;
import com.digi.work.until.BCommand;

public class OrderList implements BCommand {

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
		BasketDAO basketdao = new BasketDAO();

		String user_id = (String) session.getAttribute("user_id");
		System.out.println("id" + user_id);

		List<BasketBean> orderlist = basketdao.OrderList(user_id);
//		request.setAttribute("orderlist", orderlist);
		model.addAttribute("orderlist", orderlist);

	}
}
