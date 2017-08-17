package shop.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.LoginServiceDao;
@Controller
public class LoginController {
	@Resource(name="lsd")
	private LoginServiceDao lsd;
	@ResponseBody
	@RequestMapping("checkUser")
	public String CheckUser(HttpServletRequest req) {
		Map<String,String> map=lsd.loginUser(req);
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping("checkPassWord")
	public String checkPassWord(HttpServletRequest req){
		Map<String,Object> map=lsd.loginPassWord(req);
		return JSON.toJSONString(map);
	}
}
