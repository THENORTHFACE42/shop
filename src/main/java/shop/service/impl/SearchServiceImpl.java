package shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import shop.dao.BigtypeMapper;
import shop.dao.GoodsMapper;
import shop.dao.SmalltypeMapper;
import shop.model.Goods;
import shop.model.PageBean;
import shop.service.dao.SearchServiceDao;
@Service("ssi")
public class SearchServiceImpl implements SearchServiceDao {
	@Resource(name="goodsMapper")
	private GoodsMapper gm;
	@Resource(name="bigtypeMapper")
	private BigtypeMapper bm;
	@Resource(name="smalltypeMapper")
	private SmalltypeMapper sm;
	@Resource(name="pb")
	private PageBean pb;
	public void SearchAll(HttpServletRequest req) {
		String name = req.getParameter("name"); //获取搜索的商品名称
		int p = Integer.parseInt(req.getParameter("p")); //获取需求的页数
		String order = req.getParameter("order"); //获取排序方式
		String bid = req.getParameter("bid");
		String sid = req.getParameter("sid");
		List<Goods> salesTop=gm.selectSalesTopfiveGoods();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("order",order);
		map.put("p", p);
		map.put("pagesize", pb.getPagesize());
		map.put("start",(p-1)*pb.getPagesize());
		if(order==null){
			order="1";
			map.put("order", order);
		}
		if(bid!=null){
			map.put("bid",bid);
			PageBean pagebean=gm.selectGoodsPage(map);
			pb.setCount(pagebean.getCount());
			pb.setData(pagebean.getData());
			pb.setP(p);
			req.setAttribute("bigTypeName",bm.selectByPrimaryKey(Integer.parseInt(bid)).getName());
		}else if(sid!=null){
			map.put("sid",sid);
			PageBean pagebean=gm.selectGoodsPage(map);
			pb.setCount(pagebean.getCount());
			pb.setData(pagebean.getData());
			pb.setP(p);
			req.setAttribute("smallTypeName",sm.selectByPrimaryKey(Integer.parseInt(sid)).getName());
		}else{
			map.put("name","%"+name+"%");
			PageBean pagebean=gm.selectGoodsPage(map);
			if(pagebean==null){
				pb.setCount(0);
				pb.setData(null);
				pb.setP(p);
			}else{
				pb.setCount(pagebean.getCount());
				pb.setData(pagebean.getData());
				pb.setP(p);
			}
		}
		req.setAttribute("PageDate", pb);  //放入到请求中
		req.setAttribute("salesTop", salesTop); //放入前5销量
		req.setAttribute("order", order); //放入排序方式
		String type = "name";  //标识搜索的类型   按商品名称查询  按大类ID查询  按小类ID查询
		String tname = name; //搜索名称或按类别查询的名称
		if(name==null){
			if(bid!=null){
				name=bid;
				type="bid";
				tname=(String)req.getAttribute("bigTypeName");
			}else if(sid!=null){
				name=sid;	
				type="sid";
				tname=(String)req.getAttribute("smallTypeName");
			}
		}
		req.setAttribute("s", name); //放入搜索名称或ID
		req.setAttribute("type", type); //放入搜索类型
		req.setAttribute("tname", tname); //放入搜索名称
	}

}
