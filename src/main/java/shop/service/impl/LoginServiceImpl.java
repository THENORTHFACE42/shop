package shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import shop.dao.CollectionMapper;
import shop.dao.MyfootprintMapper;
import shop.dao.ShoplistMapper;
import shop.dao.UserMapper;
import shop.model.Collection;
import shop.model.Myfootprint;
import shop.model.Shoplist;
import shop.service.dao.LoginServiceDao;
import shop.service.dao.MyfootprintServiceDao;

@Service("lsd")
public class LoginServiceImpl implements LoginServiceDao {
	@Resource(name="userMapper")
	private UserMapper um;
	@Resource(name="shoplistMapper")
	private ShoplistMapper shoplistMapper;
	@Resource(name="collectionMapper")
	private CollectionMapper cm;
	@Resource(name="myfootprintMapper")
	private MyfootprintMapper mm;
	public Map<String,String> loginUser(HttpServletRequest req){
		String UserName=req.getParameter("user");
		String passWord=um.findPassWordByUserName(UserName);
		Map<String,String> map =new HashMap<String, String>();
		if(passWord!=null){
    		map.put("success", "true");
    	}else{
    		map.put("success", "false");
    	}
		return map;
	}
	public Map<String, Object> loginPassWord(HttpServletRequest req) {
		String UserName=req.getParameter("user");
		String password1=req.getParameter("pwd");
		String password2=um.findPassWordByUserName(UserName);
		Map<String,Object> map=new HashMap<String, Object>();
		String pwd=DigestUtils.md5Hex(password1+"無所謂");//加盐，转成128位2进制，防止盗取
		if(pwd.equals(password2)){
			int id=um.selectIdByUserName(UserName);
			map.put("state", "1");
			req.getSession().setAttribute("username", UserName);
			req.getSession().setAttribute("userid", id);
			List<Shoplist> list=shoplistMapper.selelctUserListByUserId(id);
			req.getSession().setAttribute("gwc", list);
			List<Collection> list1=cm.selectCollectionListByUserid(id);
			req.getSession().setAttribute("collectList", list1);
			List<Myfootprint> MyfootprintList=mm.selectAllByUserid(id);
			req.getSession().setAttribute("MyfootprintList", MyfootprintList);
		}else {
			map.put("state", "2");
		}
		return map;
	}
}
