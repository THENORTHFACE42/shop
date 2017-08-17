package Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import shop.dao.BigtypeMapper;
import shop.dao.GoodsMapper;
import shop.dao.ShoplistMapper;
import shop.dao.SmalltypeMapper;
import shop.dao.UserMapper;
import shop.dao.UseraddressMapper;
import shop.model.Banner;
import shop.model.Bigtype;
import shop.model.Goods;
import shop.model.PageBean;
import shop.model.Shoplist;
import shop.model.Smalltype;
import shop.model.Useraddress;

public class TestCase {
	BigtypeMapper bigtype1;
	SmalltypeMapper smalltype;
	GoodsMapper goods;
	ApplicationContext ctx;
	@Before
	public void init(){
		String cfg = "applicationContext.xml";
		ctx = 
				new ClassPathXmlApplicationContext(cfg);
		bigtype1=ctx.getBean("bigtypeMapper",BigtypeMapper.class);
		smalltype=ctx.getBean("smalltypeMapper",SmalltypeMapper.class);
		goods=ctx.getBean("goodsMapper",GoodsMapper.class);
	}
	public static void main(String[] args) {
		
		String cfg = "applicationContext.xml";
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext(cfg);
		/*BannerMapper mapper = 
				ctx.getBean("bannerMapper", BannerMapper.class);*/
		
	}
	
	@Test
	public void test2(){
		String cfg = "applicationContext.xml";
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext(cfg);
		BigtypeMapper bigtype1=ctx.getBean("bigtypeMapper",BigtypeMapper.class);
		SmalltypeMapper smalltype=ctx.getBean("smalltypeMapper",SmalltypeMapper.class);
		GoodsMapper goods=ctx.getBean("goodsMapper",GoodsMapper.class);
		List<Bigtype> list1=bigtype1.findAll();
		System.out.println(list1);
		List<Bigtype> list=new ArrayList<Bigtype>();
		for(Bigtype bigtype:list1){
			List<Smalltype> list2=smalltype.selectByBigTypeId(bigtype.getId());
			List<Goods> list3=goods.selectToptenGoods(bigtype.getId());
			bigtype.setSmallTypeList(list2);
			bigtype.setGoods(list3);
			list.add(bigtype);
		}
		System.out.println(list1);
	}
	@Test
	public void test3(){
		String cfg = "applicationContext.xml";
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext(cfg);
		UserMapper um=ctx.getBean("userMapper",UserMapper.class);
		String password =um.findPassWordByUserName("liubao");
		System.out.println(password);
	}
	@Test
	public void test4(){
		String cfg = "applicationContext.xml";
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext(cfg);
		Banner banner =ctx.getBean("banner",Banner.class);
		System.out.println(banner);
	}
	@Test
	public void test5(){
		String cfg = "applicationContext.xml";
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext(cfg);
		BigtypeMapper bigtype1=ctx.getBean("bigtypeMapper",BigtypeMapper.class);
		List<Bigtype> list=bigtype1.findAll();
		System.out.println(list);
		for(Bigtype b:list){
			System.out.println(b);
		}
	}
	@Test 
	public void test6(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("order",1);
		map.put("p", 2);
		map.put("bid",1);
		map.put("pagesize", 10);
		map.put("start", 0);
		PageBean p=ctx.getBean("pb",PageBean.class);
		System.out.println(p);
		/*PageBean list=goods.selectGoodsPage(map);
		p.setCount(list.getCount());
		p.setData(list.getData());
		p.setP(1);
		System.out.println(p);*/
	}
	@Test
	public void test7(){
		ShoplistMapper sm=ctx.getBean("shoplistMapper",ShoplistMapper.class);
		Shoplist sl=new Shoplist();
		sl.setGoodsid(3);
		sl.setUserid(24);
		Shoplist s=sm.selectGoodsIsExist(sl);
		System.out.println(s);
	}
	@Test
	public void test8(){
		UseraddressMapper um=ctx.getBean("useraddressMapper",UseraddressMapper.class);
		List<Useraddress> list=um.selectAddressListByUserid(24);
		System.out.println(list);
	}
	@Test
	public void test9(){
		UseraddressMapper um=ctx.getBean("useraddressMapper",UseraddressMapper.class);
		List<Useraddress> list=um.selectAddressListByUserid(24);
		System.out.println(list);
	}
}
