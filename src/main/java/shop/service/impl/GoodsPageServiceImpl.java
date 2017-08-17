package shop.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import shop.dao.BigtypeMapper;
import shop.dao.GoodsMapper;
import shop.dao.MyfootprintMapper;
import shop.dao.SmalltypeMapper;
import shop.model.Goods;
import shop.model.Myfootprint;
import shop.service.dao.GoodsPageServiceDao;
@Service("gpsd")
public class GoodsPageServiceImpl implements GoodsPageServiceDao{
	@Resource(name="goodsMapper")
	private GoodsMapper gm;
	@Resource(name="bigtypeMapper")
	private BigtypeMapper bm;
	@Resource(name="smalltypeMapper")
	private SmalltypeMapper sm;
	@Resource(name="myfootprintMapper")
	private MyfootprintMapper mm;
	@Resource(name="myfootprint")
	private Myfootprint mp;
	public void findGoodMsg(HttpServletRequest req) {
		int id=Integer.parseInt(req.getParameter("id"));
		Goods goods=gm.selectByPrimaryKey(id);
		goods.setViews(goods.getViews()+1);
		gm.updateByPrimaryKeySelective(goods);
		goods.setBigTypeName(bm.selectByPrimaryKey(goods.getBigtypeid()).getName());
		goods.setSmallTypeName(sm.selectByPrimaryKey(goods.getSmalltypeid()).getName());
		req.setAttribute("goodsBean", goods);
		List<Goods> xgGoods=gm.selectTopsixGoods(goods.getBigtypeid());
		req.setAttribute("xgGoods", xgGoods);
		if(req.getSession().getAttribute("userid")==null){
			return;
		}
		int userid=(int)req.getSession().getAttribute("userid");
		mp.setGoodsid(id);
		mp.setGoodsname(goods.getName());
		mp.setGoodsprice(goods.getPrice());
		mp.setGoodspropic(goods.getPropic());
		mp.setShopid(goods.getShopid());
		mp.setTime(new Date());
		mp.setUserid(userid);
		if(mm.selectIsExist(mp)==null){
			mm.insertSelective(mp);
		}else{
			Myfootprint m=mm.selectIsExist(mp);
			m.setTime(new Date());
			mm.updateByPrimaryKeySelective(m);
		}
		List<Myfootprint> MyfootprintList=mm.selectAllByUserid(userid);
		req.getSession().setAttribute("MyfootprintList", MyfootprintList);
	}

}
