package kr.co.bbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bbs.apple;
import kr.co.bbs.dao.IDao;

@Controller
public class BController {

	/*
	 * BCommand command = null; private JdbcTemplate template;
	 * 
	 * @Autowired public void setTemplate(JdbcTemplate template) { this.template =
	 * template; Constant.template = this.template; // Constant Ŭ���� ==> ����ƽ }
	 */

	@Autowired
	private SqlSession sqlSession;


	@Autowired
	private apple apple;

	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("list()");
		// command = new BListCommand();
		// command.execute(model);
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.list());

		apple.print();
		return "list";

	}

	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request, Model model) {
		System.out.println("content_view()");

		// model.addAttribute("request", request);
		// command = new BContentCommand();
		// command.execute(model);
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("content_view", dao.contentView(request.getParameter("bId")));

		return "content_view";
	}

	@RequestMapping("/write_view")
	public String write_view(Model model) {
		System.out.println("write_view()");

		return "write_view";
	}

	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("write()");

		//model.addAttribute("request", request);
		//command = new BWriteCommand();
		//command.execute(model);
		IDao dao = sqlSession.getMapper(IDao.class);

		int bId = dao.getNextBId();
		int bGroup = bId;
		System.out.println("bid: " + bId);
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
			
		dao.write(bId, bName, bTitle, bContent, bGroup);

		return "redirect:list";

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(HttpServletRequest request, Model model) {
		System.out.println("modify()");

		String bId = request.getParameter("mId");
	    String bName = request.getParameter("mWriter");
	    String bTitle = request.getParameter("mTitle");
	    String bContent = request.getParameter("mContent");
	
	    IDao dao = sqlSession.getMapper(IDao.class);
		dao.modify(Integer.parseInt(bId), bName, bTitle, bContent);

		return "redirect:list";
	}

	@RequestMapping("/reply_view")
	public String reply_view(HttpServletRequest request, Model model) {
		System.out.println("reply_view()");

		//model.addAttribute("request", request);
		//command = new BReplyViewCommand();
		//command.execute(model);
		IDao dao = sqlSession.getMapper(IDao.class);
		System.out.println(request.getParameter("bId"));
		model.addAttribute("reply_view",dao.reply_view(Integer.parseInt(request.getParameter("bId"))));
		
		return "reply_view";
	}

	@RequestMapping("/reply")
	public String reply(HttpServletRequest request, Model model) {
		System.out.println("reply()");

		//model.addAttribute("request", request);
		//command = new BReplyCommand();
		//command.execute(model);
		
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bGroup = request.getParameter("bGroup");
		String bStep = request.getParameter("bStep");
		String bIndent = request.getParameter("bIndent");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.replyShape(bGroup, bStep);
		dao.reply(bName, bTitle, bContent, Integer.parseInt(bGroup), Integer.parseInt(bStep)+1, Integer.parseInt(bIndent)+1);

		return "redirect:list";
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("delete()");

		//model.addAttribute("request", request);
		//command = new BDeleteCommand();
		//command.execute(model);

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.delete(request.getParameter("bId"));
		
		return "redirect:list";
	}

}
