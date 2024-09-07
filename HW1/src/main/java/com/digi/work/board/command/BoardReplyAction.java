package com.digi.work.board.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;

public class BoardReplyAction {


	public int execute1(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");

		try {
			request.setCharacterEncoding("euc-kr");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   	
	 	
		BoardDAO boarddao=new BoardDAO();
   		BoardBean boarddata=new BoardBean();
   		int result=0;
   		
   		boarddata.setBOARD_NUM(Integer.parseInt(request.getParameter("BOARD_NUM")));
   		boarddata.setBOARD_NAME(request.getParameter("BOARD_NAME"));
   		boarddata.setBOARD_PASS(request.getParameter("BOARD_PASS"));
   		boarddata.setBOARD_SUBJECT(request.getParameter("BOARD_SUBJECT"));
   		boarddata.setBOARD_CONTENT(request.getParameter("BOARD_CONTENT"));
   		boarddata.setBOARD_RE_REF(Integer.parseInt(request.getParameter("BOARD_RE_REF")));
   		boarddata.setBOARD_RE_LEV(Integer.parseInt(request.getParameter("BOARD_RE_LEV")));
   		boarddata.setBOARD_RE_SEQ(Integer.parseInt(request.getParameter("BOARD_RE_SEQ")));
   		
   		result=boarddao.boardReply(boarddata);
   		if(result==0){
   			System.out.println("답장 실패");
   		}
   		System.out.println("답장 완료");
   		boarddao.exit();
   		
   		return result;
}  	
}