package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.model.User;

public interface UserServiceDao {
	public void initUserPage(HttpServletRequest req);
	public void enterUserDataPage(HttpServletRequest req);
	public Map<String,Object> modifyUserMsg(HttpServletRequest req);
	public void enterUserAddressPage(HttpServletRequest req);
	public void tochangePassword(HttpServletRequest req);
	public Map<String,Object> changePassword(HttpServletRequest req);
	public void tofindPassword(HttpServletRequest req);
	public Map<String,Object> findPassword(HttpServletRequest req);
	public void toMyCollect(HttpServletRequest req);
}
