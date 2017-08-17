package shop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import shop.dao.BannerMapper;
import shop.dao.BigtypeMapper;
import shop.dao.GoodsMapper;
import shop.dao.SmalltypeMapper;
import shop.model.Banner;
import shop.model.Bigtype;
import shop.model.Goods;
import shop.model.Smalltype;
import shop.service.dao.IndexServiceDao;
@Service("isd")
public class IndexServiceImpl implements IndexServiceDao {
	@Resource(name="bannerMapper")
	private BannerMapper banner;
	@Resource(name="bigtypeMapper")
	private BigtypeMapper bigtype;
	@Resource(name="goodsMapper")
	private GoodsMapper goods;
	@Resource(name="smalltypeMapper")
	private SmalltypeMapper smalltype;
	
	public void initApplication(HttpSession hs) {
		List<Bigtype> list1=bigtype.findAll();
		List<Banner> bannerList=banner.findAll();
		hs.setAttribute("floor", list1);
		hs.setAttribute("bannerList", bannerList);
	}

}
