package shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import shop.dao.GoodsMapper;
import shop.dao.ShoplistMapper;
import shop.model.Goods;
import shop.model.Shoplist;
import shop.service.dao.GoodsListServiceDao;
@Service("glsd")
public class GoodsListServiceImpl implements GoodsListServiceDao {
	@Resource(name="shoplistMapper")
	private ShoplistMapper shoplistMapper;
	public Map<String,Object> addGoods(HttpServletRequest req) {
		String shoplist=req.getParameter("shoplist");
		Shoplist shop=JSON.parseObject(shoplist, Shoplist.class);
		Map<String, Object> map=new HashMap<String, Object>();
		Shoplist s=shoplistMapper.selectGoodsIsExist(shop);
		try {
			if(s!=null){
				s.setSum(s.getSum()+shop.getSum());
				shoplistMapper.updateByPrimaryKeySelective(s);
			}else{
				shoplistMapper.insertSelective(shop);
			}
			map.put("success","true");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success","false");
		}
		int id=(int)req.getSession().getAttribute("userid");
		List<Shoplist> list=shoplistMapper.selelctUserListByUserId(id);
		req.getSession().setAttribute("gwc", list);
		return map;
	}
	public Map<String, Object> deleteGoods(HttpServletRequest req) {
		int id=Integer.parseInt(req.getParameter("id"));
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			shoplistMapper.deleteByPrimaryKey(id);
			map.put("success","true");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success","false");
		}
		List<Shoplist> list=shoplistMapper.selectAll();
		req.getSession().setAttribute("gwc", list);
		return map;
	}
	public Map<String, Object> updategwNum(HttpServletRequest req) {
		String shoplist=req.getParameter("shoplist");
		Shoplist s=JSON.parseObject(shoplist,Shoplist.class);
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			shoplistMapper.updateByPrimaryKeySelective(s);
			map.put("success","true");
			List<Shoplist> list=shoplistMapper.selectAll();
			req.getSession().setAttribute("gwc", list);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success","false");
		}
		return map;
	}
	public void ShowGwc(HttpServletRequest req) {
		int id=(int)req.getSession().getAttribute("userid");
		List<Shoplist> list=shoplistMapper.selelctUserListByUserId(id);
		req.setAttribute("buyGoodsList", list);
		double total=0;
		for(Shoplist s:list){
			total+=s.getGoodsprice()*s.getSum();
		}
		req.setAttribute("zongjia", total);
	}
	
}
