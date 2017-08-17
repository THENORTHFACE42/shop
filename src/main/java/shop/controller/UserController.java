package shop.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.model.User;
import shop.service.dao.UserServiceDao;

@Controller
public class UserController {
	@Resource (name="us")
	private UserServiceDao us;
	@RequestMapping("userMain")
	public String enterIntoUserCentre(HttpServletRequest req){
		us.initUserPage(req);
		return "userMain";
	}
	@RequestMapping("userData")
	public String enteruserDatapage(HttpServletRequest req){
		us.enterUserDataPage(req);
		return "userMain";
	}
	@ResponseBody
	@RequestMapping("userDataUpdate")
	public String userDataUpdate(HttpServletRequest req){
		Map<String, Object> map=us.modifyUserMsg(req);
		return JSON.toJSONString(map);
	}
	@RequestMapping("userAddress")
	public String enterUserAddressPage(HttpServletRequest req){
		us.enterUserAddressPage(req);
		return "userMain";
	}
	@RequestMapping("tochangePassword")
	public String  tochangePassword(HttpServletRequest req){
		us.tochangePassword(req);
		return "userMain";
	}
	@ResponseBody
	@RequestMapping("changePassword")
	public String  changePassword(HttpServletRequest req){
		Map<String,Object> map=us.changePassword(req);
		return JSON.toJSONString(map);
	}
	@RequestMapping ("tofindPassword.do")
	public String tofindPassword(HttpServletRequest req){
		us.tofindPassword(req);
		return "userMain";
	}
	@ResponseBody
	@RequestMapping("findPassword")
	public String  findPassword(HttpServletRequest req){
		Map<String,Object> map=us.findPassword(req);
		return JSON.toJSONString(map);
	}
	@RequestMapping ("toMyCollect.do")
	public String toMyCollect(HttpServletRequest req){
		us.toMyCollect(req);
		return "userMain";
	}
}
