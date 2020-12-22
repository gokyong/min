package com.wu.book;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wu.book.dto.MemberDto;
import com.wu.book.service.MemberService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	//회원가입 get
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
			logger.info("get register");
			
			return "member/register";
	}
	
	//회원가입 get
	@RequestMapping(value="/registerdo", method = RequestMethod.POST)
	public String postRegitser(MemberDto dto) throws Exception {
			logger.info("post register");
			
			service.register(dto);
			
			return "main";
	}
	
	@RequestMapping(value="/trylogin", method = RequestMethod.GET)
	public String trylogin() throws Exception {
			logger.info("try login");
			
			return "member/loginform";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDto dto, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberDto login = service.login(dto);
		
		if(login == null) {
			session.setAttribute("member", null);
			return "member/loginfail";
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/menu";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}

}
