package shop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import shop.dao.GoodsMapper;
import shop.dao.ShoplistMapper;
import shop.model.Goods;
import shop.model.Shoplist;
import shop.service.dao.BuyServiceDao;

@Service("bsd")
public class BuyServiceImpl implements BuyServiceDao {
	@Resource(name="goodsMapper")
	private GoodsMapper gm;
	@Resource(name="shoplistMapper")
	private ShoplistMapper sm;
	@Resource(name="shoplistMapper")
	private ShoplistMapper shoplistMapper;
	public void directBuy(HttpServletRequest req) {
		int goodsid=Integer.parseInt(req.getParameter("id"));
		int num=Integer.parseInt(req.getParameter("num"));
		Goods goods=gm.selectByPrimaryKey(goodsid);
		List<Goods> list =new ArrayList<Goods>();
		list.add(goods);
		goods.setTotal(goods.getPrice()*num);
		goods.setNum(num);
		req.setAttribute("suiji",Math.random());
		req.setAttribute("buyGoodsList", list);
		req.setAttribute("zongjia", goods.getTotal());
	}
	public void buygoodsbygwc(HttpServletRequest req) {
		String shoplist=req.getParameter("gwclist");
		List<Shoplist> list=JSON.parseArray(shoplist,Shoplist.class);
		List<Goods> bygoodsList =new ArrayList<Goods>();
		double total=0;
		for(Shoplist s:list){
			Shoplist shop=shoplistMapper.selectByPrimaryKey(s.getId());
			Goods goods=gm.selectByPrimaryKey(shop.getGoodsid());
			goods.setNum(shop.getSum());
			goods.setTotal(shop.getSum()*shop.getGoodsprice());
			total+=shop.getGoodsprice()*shop.getSum();
			bygoodsList.add(goods);
		}
		req.setAttribute("buyGoodsList", bygoodsList);
		req.setAttribute("zongjia",total);
	}
	

}
