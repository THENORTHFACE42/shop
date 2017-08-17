package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface BuyServiceDao {
	public void directBuy(HttpServletRequest req);
	
	public void buygoodsbygwc(HttpServletRequest req);
}
