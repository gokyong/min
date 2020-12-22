package com.wu.book;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wu.book.dao.TDao;
import com.wu.book.dto.TodolistDto;

@Controller
public class TodoController {

		
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/todolist")
	public String todolist(@RequestParam int tday, @RequestParam String userId, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);		
		model.addAttribute("todolist",dao.todolistDao(tday, userId));
		return "todolist/todolist";
	}
	
	@RequestMapping("/tsuccess")
	public String tsuccess(@RequestParam int tday,@RequestParam int tnum, @RequestParam String userId, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		dao.todosuccessDao(tnum, userId);
		model.addAttribute("todolist",dao.todolistDao(tday, userId));
		return "todolist/todolist";
	}
	
	@RequestMapping("/successreturn")
	public String successreturn(@RequestParam int tday,@RequestParam int tnum, @RequestParam String userId, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		dao.todoreturnDao(tnum, userId);
		model.addAttribute("todolist",dao.todolistDao(tday, userId));
		return "todolist/todolist";
	}
	
	@RequestMapping("/todowriteform")
	public String todowriteform() {
		
		return "todolist/todowriteform";
	}
	
	@RequestMapping("/todowrite")
	public String todowrite(@ModelAttribute TodolistDto dto) {
		TDao dao = sqlSession.getMapper(TDao.class);
		dao.todowriteDao(dto.getTtime1(), dto.getTtime2(), dto.getTdo(), dto.getTday(), dto.getUserId());
		return "todolist/todowriteok";
	}
	
	@RequestMapping("/tododelete")
	public String tododelete(@ModelAttribute TodolistDto dto, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		dao.tododelete(dto.getTnum(), dto.getUserId());
		model.addAttribute("todolist",dao.todolistDao(dto.getTday(), dto.getUserId()));
		return "todolist/todolist";
	}
	
	@RequestMapping("/todomodifyform")
	public String todomodifyform(@ModelAttribute TodolistDto dto, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		model.addAttribute("todomodify",dao.todooneDao(dto.getTnum(), dto.getUserId()));
		return "todolist/todomodifyform";
	}
	
	@RequestMapping("/todomodify")
	public String todomodify(@ModelAttribute TodolistDto dto, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		dao.todomodifyDao(dto.getTtime1(), dto.getTtime2(), dto.getTdo(), dto.getTday(), dto.getTnum(), dto.getUserId());
		model.addAttribute("todolist",dao.todolistDao(dto.getTday(), dto.getUserId()));
		return "todolist/todolist";
	}
	
	@RequestMapping("/todopercent")
	public String percent(@RequestParam int tday, @RequestParam String userId, Model model) {
		TDao dao = sqlSession.getMapper(TDao.class);
		
		int ca = dao.todocountaDao(tday, userId);
		int cs = dao.todocountsDao(tday, userId);
		int percent=(cs*100) / ca  ;
		model.addAttribute("todoper", percent);
		return "todolist/todopercent";
	}
	
	
}
