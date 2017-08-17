package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.dao.AddressServiceDao;
import shop.service.dao.OrderServiceDao;
import shop.service.impl.UserServiceImpl;

@Controller
public class OrderController {
	@Resource(name="osd")
	private OrderServiceDao osd;
	@Resource (name="asd")
	private AddressServiceDao asd;
	@Resource (name="us")
	private UserServiceImpl us;
	@RequestMapping("sumbitOrder")
	public String sumbitOrder(HttpServletRequest req){
		osd.submitOrder(req);
		return "orderState";
	}
	@RequestMapping("orderDetail")
	public String lookOrderDetail(HttpServletRequest req){
		osd.lookOrderDetail(req);
		return "userMain";
	}
	@RequestMapping("payorder")
	public String payOrder(HttpServletRequest req){
		asd.selectAddressList(req);
		osd.payOrder(req);
		return "order";
	}
	@RequestMapping("cancelOrder")
	public String cancelOrder(HttpServletRequest req){
		osd.cancelOrder(req);
		us.initUserPage(req);
		return "userMain";
	}
}
