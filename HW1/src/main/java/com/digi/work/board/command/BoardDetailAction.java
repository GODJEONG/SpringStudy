package com.digi.work.board.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;
import com.digi.work.until.BCommand;

public class BoardDetailAction implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");

		BoardDAO boarddao = new BoardDAO(); // db ���� dao
		BoardBean boarddata = new BoardBean(); // bean �ѹ��� �������� ��ü ����

		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		int num = Integer.parseInt(request.getParameter("num"));
		try {
			boarddao.setReadCountUpdate(num);
			boarddata = boarddao.getDetail(num);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (boarddata == null) {
			System.out.println("�󼼺��� ����");
		}
		System.out.println("�󼼺��� ����");

		boarddao.exit();

		request.setAttribute("boarddata", boarddata);

	}
}
