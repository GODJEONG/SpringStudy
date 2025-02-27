package kr.soft.study;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.soft.study.member.Member;

/**
 * Handles requests for the application home page.
 */


@Controller
//@RequestMapping("/board")
@RequestMapping("/member")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/view")
	public String view() {
		return "board/view";
	}

	@RequestMapping(value = "/content")
	public String content(Model model) {
		model.addAttribute("id", 300);
		return "board/content";
	}

	@RequestMapping(value = "/reply")
	public ModelAndView reply() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", 500);
		mv.setViewName("board/reply");
		return mv;
	}

	// http://localhost:8080/study/board/confrimID?id=GODJ&pw=1234
	@RequestMapping(value = "/confrimID")
	public ModelAndView confrimID(HttpServletRequest httpServletRequest) {
		ModelAndView mv = new ModelAndView();
		String id = httpServletRequest.getParameter("id");
		String pw = httpServletRequest.getParameter("pw");

		mv.addObject("id", id);
		mv.addObject("pw", pw);
		mv.setViewName("board/confrimID");

		return mv;
	}

	// http://localhost:8080/study/board/checkID?id=GODJ&pw=1234
	@RequestMapping(value = "/checkID")
	public String checkID(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {

		model.addAttribute("identify", id);
		model.addAttribute("password", pw);

		return "board/checkID";
	}

// http://localhost:8080/study/member/join?name=SJ&id=GODJ&pw=1234&email=sjung8009@naver.com
//	@RequestMapping(value = "/join")
//	public String join(@RequestParam("name") String name, @RequestParam("id") String id, @RequestParam("pw") String pw,
//			@RequestParam("email") String email, Model model) {
//
//		model.addAttribute("name", name);
//		model.addAttribute("id", id);
//		model.addAttribute("pw", pw);
//		model.addAttribute("email", email);
//
//		return "member/join";
//	}
	

//	@RequestMapping(value = "/join")
//	public String join(@RequestParam("name") String name, @RequestParam("id") String id, @RequestParam("pw") String pw,
//			@RequestParam("email") String email, Model model) {
//
//		Member member = new Member();
//		member.setName(name);
//		member.setId(id);
//		member.setPw(pw);
//		member.setEmail(email);
//		
//		model.addAttribute("member", member);
//
//		return "member/join";
//	}
	
	@RequestMapping(value = "/join")
	public String joinData(Member member) {
		return "member/join";
	}

// http://localhost:8080/study/member/student?studentId=10
//	@RequestMapping(value = "/student")
//	public String student(HttpServletRequest httpServletRequest, Model model) {
//		String studentId = httpServletRequest.getParameter("studentId");
//		model.addAttribute("studentId",studentId);
//		return "member/student";
//	}

//	@RequestMapping(value = "/student")
//	public String student(@RequestParam("studentId") String studentId, Model model) {
//		model.addAttribute("studentId",studentId);
//		return "member/student";
//	}
	
    //	http://localhost:8080/study/member/student/100
	@RequestMapping(value = "/student/{studentId1}")
	public String student(@PathVariable String studentId1, Model model) {
		model.addAttribute("studentId",studentId1);
		return "member/student";
	}
	

}
