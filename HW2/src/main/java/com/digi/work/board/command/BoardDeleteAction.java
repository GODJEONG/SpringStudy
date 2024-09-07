package com.digi.work.board.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.until.BCommand;

public class BoardDeleteAction implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpServletResponse response = (HttpServletResponse) map.get("response");

		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		boolean result = false;
		boolean usercheck = false;
		int num = Integer.parseInt(request.getParameter("num"));

		BoardDAO boarddao = new BoardDAO();
		usercheck = boarddao.isBoardWriter(num, request.getParameter("BOARD_PASS"));

		if (usercheck == false) {
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제할 권한이 없습니다.');");
				out.println("location.href='./BoardList.bo';");
				out.println("</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		result = boarddao.boardDelete(num);
		if (result == false) {
			System.out.println("게시판 삭제 실패");
		}

		System.out.println("게시판 삭제 성공");
		boarddao.exit();
	}
}