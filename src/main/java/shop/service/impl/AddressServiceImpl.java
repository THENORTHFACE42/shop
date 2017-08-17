package shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import shop.dao.UseraddressMapper;
import shop.model.Useraddress;
import shop.service.dao.AddressServiceDao;

import com.alibaba.fastjson.JSON;
@Service ("asd")
public class AddressServiceImpl implements AddressServiceDao{
	@Resource (name="useraddressMapper")
	private UseraddressMapper um;
	public void selectAddressList(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		List<Useraddress> list=um.selectAddressListByUserid(userid);
		req.getSession().setAttribute("addressList", list);
	}
	public Map<String, Object> addAddress(HttpServletRequest req) {
		String userAddress=req.getParameter("useraddress");
		Useraddress u=JSON.parseObject(userAddress,Useraddress.class);
		
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			if(u.getMsg()==1){
				List<Useraddress> list=um.selectAddressListByUserid(u.getUserid());
				for(Useraddress useraddress:list){
					useraddress.setMsg(0);
					um.updateByPrimaryKeySelective(useraddress);
				}
			}
			um.insertSelective(u);
			map.put("success","true");
		} catch (Exception e) {
			map.put("success","false");
		}
		return map;
		
	}
	public Map<String, Object> setDefaultaddress(HttpServletRequest req) {
		int addressid=Integer.parseInt(req.getParameter("id"));
		int userid=(int)req.getSession().getAttribute("userid");
		List<Useraddress> list=um.selectAddressListByUserid(userid);
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			for(Useraddress u:list){
				u.setMsg(0);
				um.updateByPrimaryKeySelective(u);
			}
			Useraddress ua=um.selectByPrimaryKey(addressid);
			ua.setMsg(1);
			um.updateByPrimaryKeySelective(ua);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
		}
		return map;
	}
	public void toaddAddress(HttpServletRequest req) {
		req.setAttribute("rightPage", "addAddress");
	}
	public Map<String, Object> deleteaddress(HttpServletRequest req) {
		int Addressid=Integer.parseInt(req.getParameter("id"));
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			um.deleteByPrimaryKey(Addressid);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success",false);
		}
		return map;
	}

}
