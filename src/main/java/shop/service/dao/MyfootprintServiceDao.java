package shop.service.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.model.Myfootprint;

public interface MyfootprintServiceDao {
	public List<Myfootprint> selectMyfootprintList(int userid);
	public void deleteAllfoot(int id,HttpServletRequest req);
}
