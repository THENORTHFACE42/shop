package shop.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import shop.dao.CollectionMapper;
import shop.dao.OrderMapper;
import shop.dao.UserMapper;
import shop.dao.UseraddressMapper;
import shop.model.Collection;
import shop.model.PageBean;
import shop.model.User;
import shop.model.Useraddress;
import shop.service.dao.UserServiceDao;

@Service("us")
public class UserServiceImpl implements UserServiceDao {
	@Resource(name="pb")
	private PageBean pb;
	@Resource(name="orderMapper")
	private OrderMapper om;
	@Resource(name="userMapper")
	private UserMapper userMapper;
	@Resource(name="useraddressMapper")
	private UseraddressMapper uam;
	@Resource (name="collectionMapper")
	private CollectionMapper cm;
	public void initUserPage(HttpServletRequest req) {
		String p = req.getParameter("p");
		Map <String,Object> map=new HashMap<String, Object>();
		map.put("userid", (int) req.getSession().getAttribute("userid"));
		if (p == null) { // 如果未收到请求页码 则赋值1
			p = "1";
			map.put("p", Integer.parseInt(p));
		}else{
			map.put("p", Integer.parseInt(p));
		}
		String type = req.getParameter("type");
		if (type == null) {
			type = "1";
			map.put("type", Integer.parseInt(type));
		}else{
			map.put("type", Integer.parseInt(type));
		}
		map.put("pagesize", pb.getPagesize());
		map.put("start",(Integer.parseInt(p)-1)*pb.getPagesize());
		PageBean pagebean= om.selectOrderPage(map);
		if(pagebean!=null){
			pb.setCount(pagebean.getCount());
			pb.setData(pagebean.getData());
			pb.setP(Integer.parseInt(p));
		}else{
			pb.setCount(0);
			pb.setData(null);
			pb.setP(Integer.parseInt(p));
		}
		req.setAttribute("type", type); //放入请求类型
		req.setAttribute("p", p); //放入请求页码
		req.setAttribute("rightPage", "orderAll");
		req.setAttribute("PageDate", pb);
		req.setAttribute("data",pb.getData() );
	}
	public void enterUserDataPage(HttpServletRequest req) {
		User u=userMapper.selectByPrimaryKey((int)req.getSession().getAttribute("userid"));
		req.setAttribute("userBean", u); //放入userBean
		req.setAttribute("rightPage", "userData");
	}
	public Map<String,Object> modifyUserMsg(HttpServletRequest req) {
		String user=req.getParameter("user");
		User u= JSON.parseObject(user,User.class);
		int n=userMapper.updateByPrimaryKeySelective(u);
		Map<String, Object> reslt = new HashMap<String, Object>();
		if(n==0){
			//密码修改失败
			reslt.put("error", true);
		}else{
			//修改成功
			reslt.put("success", true);
		}
		return reslt;
	}
	public void enterUserAddressPage(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		List<Useraddress> list=uam.selectAddressListByUserid(userid);
		req.getSession().setAttribute("addressList", list);
		req.setAttribute("rightPage", "address");
	}
	public void tochangePassword(HttpServletRequest req) {
		req.setAttribute("rightPage", "changePassword");
	}
	public Map<String,Object> changePassword(HttpServletRequest req) {
		String password1= req.getParameter("password1");
		String password2= req.getParameter("password2");
		int userid=(int) req.getSession().getAttribute("userid");
		User u=userMapper.selectByPrimaryKey(userid);
		Map<String, Object> reslt = new HashMap<String, Object>();
		if(u.getPassword().equals(DigestUtils.md5Hex(password1+"無所謂"))){
			u.setPassword(DigestUtils.md5Hex(password2+"無所謂"));
			userMapper.updateByPrimaryKeySelective(u);
			reslt.put("success", true);
		}else{
			reslt.put("success", false);
		}
		return reslt;
	}
	public void tofindPassword(HttpServletRequest req) {
		req.setAttribute("rightPage", "findPassword");
	}
	public Map<String, Object> findPassword(HttpServletRequest req) {
		String p1 =req.getParameter("p1");
		String user=req.getParameter("user");
		String phone=req.getParameter("phone");
		Map<String, Object> map = new HashMap<String, Object>();
		String password=userMapper.findPassWordByUserName(user);
		User u=null;
		if(password==null){
		}else{
			int id=userMapper.selectIdByUserName(user);
			u=userMapper.selectByPrimaryKey(id);
		}
		if(u==null){
			map.put("success", false);
		}else{
			if(u.getPhone()==null){
				map.put("success", false);
			}else {
				if(u.getPhone().equals(phone)){
					u.setPassword(DigestUtils.md5Hex(p1+"無所謂"));
					map.put("success", true);
				}
			}
				
		
		}
		return map;
	}
	public void toMyCollect(HttpServletRequest req) {
		int userid=(int) req.getSession().getAttribute("userid");
		String page1=req.getParameter("page");
		int count =0;
		PageBean p=cm.selectCountCollectionByUserid(userid);
		if(p!=null){
			count=(int)Math.ceil(p.getCount()*1.0/pb.getPagesize());
		}
		Map<String, Object> map=new HashMap<String, Object>();
		int page=0;
		if(page1==null){
			page=1;
		}else{
			page=Integer.parseInt(page1);
		}
		map.put("userid",userid);
		map.put("start", (page-1)*pb.getPagesize());
		map.put("end",pb.getPagesize());
		List<Collection> list =cm.selectCollectionPage(map);
		req.setAttribute("count", count);
		req.setAttribute("rightPage", "MyCollect");
		req.setAttribute("collect", list); 
	}

}
