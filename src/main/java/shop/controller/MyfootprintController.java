package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.service.dao.MyfootprintServiceDao;
@Controller
public class MyfootprintController {
	@Resource(name="msd")
	private MyfootprintServiceDao msd;
	@ResponseBody
	@RequestMapping("deleteAllfoot")
	public String deleteAllfoot(int id,HttpServletRequest req){
		try {
			msd.deleteAllfoot(id,req);
			return "{\"success\":\"true\"}";
		} catch (Exception e) {
			return "{\"success\":\"false\"}";
		}
	}
}
