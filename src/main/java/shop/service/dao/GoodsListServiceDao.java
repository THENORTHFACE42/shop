package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface GoodsListServiceDao {
	public Map<String,Object> addGoods(HttpServletRequest req);
	public Map<String,Object> deleteGoods(HttpServletRequest req);
	public Map<String,Object> updategwNum(HttpServletRequest req);
	public void ShowGwc(HttpServletRequest req);
}
