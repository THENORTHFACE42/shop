package shop.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.CollectionServiceDao;

@Controller
public class MyCollectionController {
	@Resource(name="csd")
	private CollectionServiceDao csd;
	@ResponseBody
	@RequestMapping("addcollection")
	public String addcollection(HttpServletRequest req){
		Map<String, Object> map=csd.addcollection(req);
		return JSON.toJSONString(map);
		
	}
	@RequestMapping("delCollect")
	public String delCollect(int id,HttpServletRequest req){
		csd.delCollect(id, req);
		return "redirect:toMyCollect.do";
		
	}
	@ResponseBody
	@RequestMapping("delCollectfromNavigation")
	public String delCollectfromNavigation(int id,HttpServletRequest req){
		try {
			csd.delCollect(id, req);
			return "{\"success\":\"true\"}";
		} catch (Exception e) {
			return "{\"success\":\"false\"}";
		}
		
	}
}
