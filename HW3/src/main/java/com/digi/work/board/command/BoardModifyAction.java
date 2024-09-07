package com.digi.work.board.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;

public class BoardModifyAction {

	public int execute1(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpServletResponse response = (HttpServletResponse) map.get("response");

		/*
		 * String realFolder = ""; String saveFolder = "boardupload";
		 * 
		 * int fileSize = 5 * 1024 * 1024;
		 * 
		 * realFolder =
		 * request.getSession().getServletContext().getRealPath(saveFolder);
		 */
		BoardDAO boarddao = new BoardDAO(); // db ���� dao
		BoardBean boarddata = new BoardBean(); // bean �ѹ��� �������� ��ü ����

		/*
		 * MultipartRequest multi = null; try { multi = new MultipartRequest(request,
		 * realFolder, fileSize, "euc-kr", new DefaultFileRenamePolicy()); } catch
		 * (IOException e1) { e1.printStackTrace(); }
		 */

		try {
			request.setCharacterEncoding("euc-kr");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean result = false;

		int num = Integer.parseInt(request.getParameter("BOARD_NUM"));

		boolean usercheck = boarddao.isBoardWriter(num, request.getParameter("BOARD_PASS"));
	
		if (usercheck == false) {
//			response.setContentType("text/html;charset=euc-kr");
//			PrintWriter out;
//			try {
//				out = response.getWriter();
//				out.println("<script>");
//				out.println("alert('수정 권한이 없습니다.');");
//				out.println("location.href='./BoardList';");
//				out.println("</script>");
//				out.close();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			System.out.println("비밀번호가 다릅니다.");
		    model.addAttribute("errorMessage", "비밀번호가 다릅니다.");
            return boarddata.getBOARD_NUM();
		}

		try {
			boarddata.setBOARD_NUM(num);
			boarddata.setBOARD_SUBJECT(request.getParameter("BOARD_SUBJECT"));
			boarddata.setBOARD_CONTENT(request.getParameter("BOARD_CONTENT"));
			
			result = boarddao.boardModify(boarddata);
			if (result == false) {
				System.out.println("수정 실패");
			}
			//boarddao.exit();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return boarddata.getBOARD_NUM();
	}

}