package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AddressServiceDao {
	public void selectAddressList(HttpServletRequest req);
	public Map<String,Object> addAddress(HttpServletRequest req);
	public Map<String,Object> setDefaultaddress(HttpServletRequest req);
	public void toaddAddress(HttpServletRequest req);
	public Map<String,Object> deleteaddress(HttpServletRequest req);
}
