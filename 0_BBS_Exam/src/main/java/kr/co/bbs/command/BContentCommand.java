package kr.co.bbs.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.bbs.dao.BDao;
import kr.co.bbs.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String bId = request.getParameter("bId");

		BDao dao = new BDao();
		BDto dto = dao.contentView(bId);

		model.addAttribute("content_view", dto);
	}
	
	// 오버라이드 안했다면, 아래와 같이 구현 가능
	public void execute1(Model model, HttpServletRequest request) {
		
		BDao dao = new BDao();
		BDto dto = dao.contentView(request.getParameter("bId"));

		model.addAttribute("content_view", dto);
	}

}
