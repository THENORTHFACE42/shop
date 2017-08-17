package shop.service.impl;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import shop.dao.UserMapper;
import shop.model.User;
import shop.service.dao.RegisterServiceDao;
@Service("rsd")
public class RegisterServiceImpl implements RegisterServiceDao{
	@Resource(name="userMapper")
	private UserMapper um;
	public void Register(User u) {
		u.setPassword(DigestUtils.md5Hex(u.getPassword()+"無所謂"));
		um.insertSelective(u);
	}

	
	

	


}
