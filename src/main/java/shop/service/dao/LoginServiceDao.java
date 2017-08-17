package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface LoginServiceDao {
	public Map<String,String> loginUser(HttpServletRequest req);
	public Map<String,Object> loginPassWord(HttpServletRequest req);
}
