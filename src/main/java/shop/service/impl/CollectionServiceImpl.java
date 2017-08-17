package shop.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import shop.dao.CollectionMapper;
import shop.model.Collection;
import shop.model.PageBean;
import shop.service.dao.CollectionServiceDao;
@Service("csd")
public class CollectionServiceImpl implements CollectionServiceDao {
	@Resource (name="collectionMapper")
	private CollectionMapper cm;
	public Map<String, Object> addcollection(HttpServletRequest req) {
		int userid=(int)req.getSession().getAttribute("userid");
		String coll=req.getParameter("collectlist");
		Collection c=JSON.parseObject(coll,Collection.class);
		c.setTime(new Date());
		Map<String, Object> map=new HashMap<String, Object>();
		if(cm.selectIsExist(c)!=null){
			map.put("exist", true);
			return map;
		}
		try {
			cm.insertSelective(c);
			map.put("success","true");
			List<Collection> list1=cm.selectCollectionListByUserid(userid);
			req.getSession().setAttribute("collectList", list1);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success","false");
		}
		return map;
		
	}
	public void delCollect(int id,HttpServletRequest req) {
		int uesrid=(int) req.getSession().getAttribute("userid");
		int n=cm.deleteByPrimaryKey(id);
		if(n==1){
			List<Collection> list1=cm.selectCollectionListByUserid(uesrid);
			req.getSession().setAttribute("collectList", list1);
		}
	}
	

}
