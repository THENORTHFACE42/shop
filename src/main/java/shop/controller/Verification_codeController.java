package shop.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import shop.service.dao.Verification_codeServiceDao;

@Controller
public class Verification_codeController {
	@Resource(name="vsd")
	private Verification_codeServiceDao vsd;
	@RequestMapping("genImage")
	public void genImage(HttpServletRequest request,
            HttpServletResponse response){
		vsd.genImage(request, response);
	}
	@ResponseBody
	@RequestMapping("Checkyzm")
	public String Checkyzm(HttpServletRequest req){
		Map<String, Object> map=vsd.CheckImage(req);
		return JSON.toJSONString(map);
	}
	
}
