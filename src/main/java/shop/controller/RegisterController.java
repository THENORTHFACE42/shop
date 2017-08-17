package shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.model.User;
import shop.service.dao.RegisterServiceDao;

@Controller
public class RegisterController {
	@Resource(name="rsd")
	private RegisterServiceDao rsd;
	@ResponseBody
	@RequestMapping("Register")
	public String Register(User u){
		try {
			rsd.Register(u);
			return "{\"success\":\"true\"}";
		} catch (Exception e) {
			return "{\"success\":\"false\"}";
		}
	}
	
}
