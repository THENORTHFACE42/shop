package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.dao.UserquitServiceDao;

@Controller
public class UserquitController {
	@Resource(name="usd")
	private UserquitServiceDao usd;
	@RequestMapping("logout")
	public String logout(HttpServletRequest req){
		usd.Userquit(req);
		return "redirect:index.do";
	}
	
}
