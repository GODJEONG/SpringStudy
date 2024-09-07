package com.digi.work.board.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;
import com.digi.work.until.BCommand;

public class BoardReplyView implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");


		BoardDAO boarddao=new BoardDAO();
   		BoardBean boarddata=new BoardBean();
   		
   		int num=Integer.parseInt(request.getParameter("num"));
   		
   		try {
			boarddata=boarddao.getDetail(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   		
   		if(boarddata==null){
   			System.out.println("답장 페이지 이동 실패");
   		}
   		System.out.println("답장 페이지 이동 완료");
   		
   		request.setAttribute("boarddata", boarddata);
   		boarddao.exit();
}
}