package shop.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.AddressServiceDao;

@Controller
public class AddressController {
	@Resource(name="asd")
	private AddressServiceDao asd;
	@ResponseBody
	@RequestMapping("addaddress")
	public String addAddress(HttpServletRequest req){
		Map<String, Object> map=asd.addAddress(req);
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping("setDefaultaddress")
	public String setDefaultaddress(HttpServletRequest req){
		Map<String, Object> map=asd.setDefaultaddress(req);
		return JSON.toJSONString(map);
	}
	@RequestMapping("toaddAddress")
	public String toaddAddress(HttpServletRequest req){
		asd.toaddAddress(req);
		return "userMain";
	}
	@ResponseBody
	@RequestMapping("deleteaddress")
	public String deleteaddress(HttpServletRequest req){
		Map<String, Object> map=asd.deleteaddress(req);
		return JSON.toJSONString(map);
	}
}
