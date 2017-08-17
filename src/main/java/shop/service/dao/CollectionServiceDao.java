package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CollectionServiceDao {
	public Map<String, Object> addcollection(HttpServletRequest req);
	public void delCollect(int id,HttpServletRequest req);
}
