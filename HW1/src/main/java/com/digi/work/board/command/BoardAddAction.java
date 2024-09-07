package com.digi.work.board.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.digi.work.dao.BoardDAO;
import com.digi.work.dto.BoardBean;
import com.digi.work.until.BCommand;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardAddAction implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// HttpServletRequest response = (HttpServletRequest) map.get("response");


		BoardDAO boarddao=new BoardDAO();		//db ���� dao
	   	BoardBean boarddata=new BoardBean(); 		// bean �ѹ��� �������� ��ü ����
	   	
		String realFolder="";
   		String saveFolder="boardupload";
   		
   		int fileSize=5*1024*1024;
   		
   		// realFolder=request.getRealPath(saveFolder);  
   		realFolder = request.getSession().getServletContext().getRealPath(saveFolder);
   		
   		System.out.println(realFolder);
   		System.out.println("teat1");
   		System.out.println(request.getParameter("BOARD_NAME"));
   		System.out.println(request.getParameter("BOARD_PASS"));

   		boolean result=false;
   		
   		try{
   			
   			MultipartRequest multi=null;
   			
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"euc-kr",
   					new DefaultFileRenamePolicy());
 
   	   		System.out.println(multi.getParameter("BOARD_NAME"));
   	   		System.out.println(multi.getParameter("BOARD_PASS"));
   	   		System.out.println(multi.getParameter("BOARD_SUBJECT"));
   	   		System.out.println(multi.getParameter("BOARD_CONTENT"));
   	   		System.out.println(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
   			
   			boarddata.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
   			boarddata.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
	   		boarddata.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
	   		boarddata.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
	   		boarddata.setBOARD_FILE(
	   				multi.getFilesystemName((String)multi.getFileNames().nextElement()));
	   		
	   		boarddata.getBOARD_NAME();
	   		boarddata.getBOARD_PASS();
	   		
	   		result=boarddao.boardInsert(boarddata);
	   		
	   		if(result==false){
	   			System.out.println("업로스 실패");
	   		}
	   		System.out.println("업로드 성공");
	   		
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
	}  	
}
