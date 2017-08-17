package shop.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.AddressServiceDao;
import shop.service.dao.BuyServiceDao;
import shop.service.dao.OrderServiceDao;

@Controller
public class BuyGoodsController {
	@Resource (name="asd")
	private AddressServiceDao asd;
	@Resource( name="osd")
	private OrderServiceDao osd;
	@Resource (name="bsd")
	private BuyServiceDao bsd;
	@RequestMapping("buyGoods")
	public String directBuy(HttpServletRequest req){
		bsd.directBuy(req);
		osd.addOrder(req);
		asd.selectAddressList(req);
		return "order"; 
	}
	@RequestMapping("buygoodsbygwc")
	public String buyGoodsBygwc(HttpServletRequest req){
			bsd.buygoodsbygwc(req);
			osd.addlistOrder(req);
			asd.selectAddressList(req);
		return "order";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
