package shop.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import shop.service.dao.UserquitServiceDao;
@Service("usd")
public class UserquitServiceImpl  implements UserquitServiceDao {

	public void Userquit(HttpServletRequest req) {
		req.getSession().invalidate();
	}

}
