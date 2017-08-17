package shop.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.GoodsListServiceDao;

@Controller
public class GoodsCartController {
	@Resource(name="glsd")
	private GoodsListServiceDao glsd;
	@ResponseBody
	@RequestMapping("addgwc")
	public String addGWC(HttpServletRequest req){
		Map<String, Object> map=glsd.addGoods(req);
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping("scgwc")
	public String deleteGWC(HttpServletRequest req){
		Map<String, Object> map=glsd.deleteGoods(req);
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping("updategwNum")
	public String updategwNum(HttpServletRequest req){
		Map<String,Object> map=glsd.updategwNum(req);
		return JSON.toJSONString(map);
	}
	@RequestMapping("showGWC.do")
	public String gwcBuy(HttpServletRequest req){
		glsd.ShowGwc(req);
		return "cart";
	}
}
