package shop.service.dao;

import javax.servlet.http.HttpServletRequest;

public interface OrderServiceDao {
	public void addOrder(HttpServletRequest req);
	public void addlistOrder(HttpServletRequest req);
	public void submitOrder(HttpServletRequest req);
	public void lookOrderDetail(HttpServletRequest req);
	public void payOrder(HttpServletRequest req);
	public void cancelOrder(HttpServletRequest req);
}
