package shop.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import shop.dao.GoodsMapper;
import shop.dao.OrderMapper;
import shop.dao.OrderitemMapper;
import shop.dao.ShoplistMapper;
import shop.dao.UseraddressMapper;
import shop.model.Goods;
import shop.model.Order;
import shop.model.Orderitem;
import shop.model.Shoplist;
import shop.model.Useraddress;
import shop.service.dao.OrderServiceDao;

import com.alibaba.fastjson.JSON;
@Service("osd")
public class OrderServiceImpl implements OrderServiceDao {
	@Resource(name="orderMapper")
	private OrderMapper om;
	@Resource(name="order")
	private Order order;
	@Resource(name="orderitemMapper")
	private OrderitemMapper orderitemMapper;
	@Resource(name="goodsMapper")
	private GoodsMapper gm;
	@Resource(name="orderitem")
	private Orderitem orderitem;
	@Resource(name="shoplistMapper")
	private ShoplistMapper shoplistMapper;
	@Resource (name="useraddressMapper")
	private UseraddressMapper useraddress;
	public static String sjs() {
		String sjs = "";
		String time=String.valueOf(System.currentTimeMillis());
		
		int x=(int)(Math.random()*100);
		if(x<10){
			x=x+9;
		}else if(x==100){
			x--;
		}
		sjs=time+x;
		return sjs;
	}
	
	public void addOrder(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		int goodsid=Integer.parseInt(req.getParameter("id"));
		int sum=Integer.parseInt(req.getParameter("num"));
		Goods goods=gm.selectByPrimaryKey(goodsid);
		String orderid=OrderServiceImpl.sjs();
		order.setId(orderid);
		order.setState(1);
		order.setUserid(userid);
		order.setTime(new Date());
		order.setTotal(sum*goods.getPrice());
		order.setAddressid(1);
		om.insertSelective(order);
		orderitem.setGoodsid(goodsid);
		orderitem.setGoodsname(goods.getName());
		orderitem.setGoodsprice(goods.getPrice());
		orderitem.setOrderid(orderid);
		orderitem.setSum(sum);
		orderitem.setPropic(goods.getPropic());
		orderitem.setSumtotal(sum*goods.getPrice());
		orderitemMapper.insertSelective(orderitem);
		req.getSession().setAttribute("orderId", orderid);
	}

	public void addlistOrder(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		String shoplist=req.getParameter("gwclist");
		List<Shoplist> list=JSON.parseArray(shoplist,Shoplist.class);
		List<Goods> bygoodsList =new ArrayList<Goods>();
		double total=0;
		String orderid=OrderServiceImpl.sjs();
		order.setId(orderid);
		order.setState(1);
		order.setUserid(userid);
		order.setTime(new Date());
		order.setAddressid(1);
		for(Shoplist s:list){
			Shoplist shop=shoplistMapper.selectByPrimaryKey(s.getId());
			Goods goods=gm.selectByPrimaryKey(shop.getGoodsid());
			goods.setNum(shop.getSum());
			total+=shop.getGoodsprice()*shop.getSum();
			orderitem.setGoodsid(shop.getGoodsid());
			orderitem.setGoodsname(goods.getName());
			orderitem.setGoodsprice(goods.getPrice());
			orderitem.setOrderid(orderid);
			orderitem.setSum(goods.getNum());
			orderitem.setPropic(goods.getPropic());
			orderitem.setSumtotal(goods.getNum()*goods.getPrice());
			orderitemMapper.insertSelective(orderitem);
		}
		order.setTotal(total);
		om.insertSelective(order);
		req.getSession().setAttribute("orderId", orderid);
	}

	public void submitOrder(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		String orderId = req.getParameter("tag");//订单编号
		String addressId = req.getParameter("sender");//地址ID
		String PayType = req.getParameter("PayType");//支付方式
		String liuyan = req.getParameter("liuyan");//留言信息
		List<Orderitem> list=orderitemMapper.selectOrderGoodsByOrderId(orderId);
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("userid", userid);
		map.put("orderId", orderId);
		int n=shoplistMapper.deleteBuyedGoods(map);
		for(Orderitem o:list){
			String orderid=OrderServiceImpl.sjs();
			order.setId(orderid);
			if(addressId==null){
				addressId="0";
			}
			order.setAddressid(Integer.parseInt(addressId));
			if(PayType.equals("1")){
				//货到付款
				order.setState(6);
			}else{
				//在线支付
				order.setState(2);
			}
			order.setRemarks(liuyan);
			order.setUserid(userid);
			order.setTime(new Date());
			order.setTotal(o.getSum()*o.getGoodsprice());
			om.insertSelective(order);
			o.setOrderid(orderid);
			orderitemMapper.updateByPrimaryKeySelective(o);
		}
		om.deleteByPrimaryKey(orderId);
		orderitemMapper.deleteGeneralOrder(orderId);
		List<Shoplist> shoplist=shoplistMapper.selectAll();
		req.getSession().setAttribute("gwc", shoplist);
	}

	public void lookOrderDetail(HttpServletRequest req) {
		String orderid=req.getParameter("id");
		int userid=(int)req.getSession().getAttribute("userid");
		Order order=om.selectByPrimaryKey(orderid);
		if(order.getRemarks()==null){
			order.setRemarks("未填写");
		}
		String addressStr =null;
		if(order.getAddressid()==1){
			addressStr="未填写";
		}else{
			Useraddress address=useraddress.selectByPrimaryKey(order.getAddressid());
			addressStr= address.getProvice()+"  "+address.getCity()+"  "+address.getArea()+"  "+address.getAddress()+"&nbsp;&nbsp;&nbsp;&nbsp;手机："+address.getPhone()+"&nbsp;&nbsp;&nbsp;&nbsp;收货人姓名："+address.getUsername();
		}
		List<Orderitem> list=orderitemMapper.selectOrderGoodsByOrderId(orderid);
		req.setAttribute("orderBean", order);
		req.setAttribute("address", addressStr);
		req.setAttribute("orderItemList", list);
		req.setAttribute("rightPage", "orderDetail");
	
	}

	public void payOrder(HttpServletRequest req) {
		String orderId=req.getParameter("orderId");
		List<Goods> bygoodsList =new ArrayList<Goods>();
		List<Orderitem> list=orderitemMapper.selectOrderGoodsByOrderId(orderId);
		double total=0;
		for(Orderitem s:list){
			Goods goods=gm.selectByPrimaryKey(s.getGoodsid());
			goods.setNum(s.getSum());
			goods.setTotal(s.getSumtotal());
			total+=s.getSumtotal();
			bygoodsList.add(goods);
		}
		req.setAttribute("buyGoodsList", bygoodsList);
		req.setAttribute("zongjia",total);
	}

	public void cancelOrder(HttpServletRequest req) {
		String orderId=req.getParameter("orderId");
		om.deleteByPrimaryKey(orderId);
		orderitemMapper.deleteGeneralOrder(orderId);
	}
}
