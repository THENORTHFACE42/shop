package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.dao.GoodsPageServiceDao;

@Controller
public class GoodsPageController {
	@Resource(name="gpsd")
	private GoodsPageServiceDao gpsd;
	@RequestMapping("goodsPage")
	public String GoodsPageController(HttpServletRequest req){
		gpsd.findGoodMsg(req);
		return "goods";
	}
}
