package shop.service.dao;

import javax.servlet.http.HttpServletRequest;

import shop.model.Goods;

public interface GoodsPageServiceDao {
	public void findGoodMsg(HttpServletRequest req);
}
