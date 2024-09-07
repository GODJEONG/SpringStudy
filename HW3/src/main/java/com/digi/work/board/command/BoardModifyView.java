package com.digi.work.board.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;
import com.digi.work.until.BCommand;

public class BoardModifyView implements BCommand {

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
			boarddata = boarddao.getDetail(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (boarddata == null) {
			System.out.println("수정 조회 실패");
		}

		//boarddao.exit();
		request.setAttribute("boarddata", boarddata);
	}
}