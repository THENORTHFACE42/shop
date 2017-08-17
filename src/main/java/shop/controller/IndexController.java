package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.dao.IndexServiceDao;
@Controller
public class IndexController {
	@Resource(name="isd")
	private IndexServiceDao isd;
	@RequestMapping("index")
	public String  indexController(HttpSession hs){
		isd.initApplication(hs);
		return "index";
	}
}
