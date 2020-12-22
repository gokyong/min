package com.wu.book;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wu.book.dao.BDao;
import com.wu.book.dto.BoardcontentDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/main")
	public String main2() {
		return "main";
	}
	
	@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}
	
	
	@RequestMapping("/boardlist")
	public String list(Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("boardlist", dao.boardlistDao());
		
		return "board/boardlist";
	}
	
	@RequestMapping("/writeboard_form")
	public String writeboard_form() {
		return "board/writeboard_form";
	}

	@RequestMapping("/writeboard")
	public String writeboard(HttpServletRequest request, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.boardwriteDao(request.getParameter("btitle"), request.getParameter("bcontent"), request.getParameter("userId"));
		return "redirect:boardlist";
	}
	
	@RequestMapping("/boardview")
	public String boardview(@RequestParam int bnum, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("boardview", dao.boardviewDao(bnum));
		
		return "board/boardview";
	}

	@RequestMapping("/boardmodifyform")
	public String boardmodify_form(@RequestParam int bnum, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("boardview", dao.boardviewDao(bnum));
		
		return "board/boardmodifyform";
	}
	
	@RequestMapping("/boardmodify")
	public String boardmodify(@ModelAttribute BoardcontentDto dto, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.boardmodifyDao(dto.getBnum(), dto.getBtitle(), dto.getBcontent());
		return "redirect:boardlist";
	}	
	@RequestMapping("/boarddelete")
	public String boarddelete(@ModelAttribute BoardcontentDto dto, Model model) {
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.boarddeleteDao(dto.getBnum());
		return "redirect:boardlist";
	}
	
}

