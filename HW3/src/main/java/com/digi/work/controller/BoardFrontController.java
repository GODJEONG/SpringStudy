package com.digi.work.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.digi.work.board.command.*;
import com.digi.work.until.BCommand;
import com.digi.work.until.Constant;

@Controller
public class BoardFrontController {

	BCommand command = null;

	private JdbcTemplate template;

	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}

	@RequestMapping("/BoardList")
	public String BoardList(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardListAction();

		command.execute(model);

		return "board/qna_board_list";
	}

	@RequestMapping("/BoardDetailAction")
	public String BoardDetailAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardDetailAction();

		command.execute(model);

		return "board/qna_board_view";
	}
	
	@RequestMapping("/BoardWrite")
	public String BoardWrite() {
		return "board/qna_board_write";
	}
	
	@RequestMapping("/BoardAddAction")
	public String BoardAddAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardAddAction();

		command.execute(model);

		return "redirect:BoardList";
	}
	
	@RequestMapping("/BoardReply")
	public String BoardReply(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardReplyView();

		command.execute(model);

		return "board/qna_board_reply";
	}
	
	@RequestMapping("/BoardReplyAction")
	public String BoardReplyAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		// command = new BoardReplyAction();
		// command.execute(model);
		BoardReplyAction bra = new BoardReplyAction();
		int a = bra.execute1(model);

		return "redirect:BoardDetailAction?num=" + a ;
	}	
	
	@RequestMapping("/BoardDelete")
	public String BoardDelete() {
		return "board/qna_board_delete";
	}
	
	@RequestMapping("/BoardDeleteAction")
	public String BoardDeleteAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardDeleteAction();

		command.execute(model);
		
		if (model.containsAttribute("e	rrorMessage")) {
			return "board/qna_board_delete";
		}

		return "redirect:BoardList";
	}
	
	@RequestMapping("/BoardModify")
	public String BoardModify(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);
		command = new BoardModifyView();

		command.execute(model);

		return "board/qna_board_modify";
	}	
	
	@RequestMapping("/BoardModifyAction")
	public String BoardModifyAction(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model) {

		model.addAttribute("request", request);
		model.addAttribute("response", response);

		//command = new BoardModifyView();
		//command.execute(model);
		BoardModifyAction bda = new BoardModifyAction();
		int a = bda.execute1(model);
		
		if (model.containsAttribute("errorMessage")) {
			return "board/qna_board_modify";
		}
		
		return "redirect:BoardDetailAction?num="+ a;
	}
	
	
//	   @PostMapping("/BoardModifyAction")
//	    public String BoardModifyAction(@RequestBody BoardBean board, Model model) {
//	        model.addAttribute("board", board);
//	        BoardModifyAction bda = new BoardModifyAction();
//	        int a = bda.execute1(model);
//	        if (model.containsAttribute("errorMessage")) {
//	            return "board/qna_board_modify";
//	        }
//	        return "redirect:BoardDetailAction?num=" + a;
//	    }
	
}
