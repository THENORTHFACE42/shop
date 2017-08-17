package shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shop.service.impl.SearchServiceImpl;

@Controller
public class SearchController {
	@Resource(name="ssi")
	private SearchServiceImpl ssi;
	@RequestMapping("search")
	private String search(HttpServletRequest req){
		ssi.SearchAll(req);
		return "search";
	}
}
