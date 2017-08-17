package shop.dao;

import java.util.List;
import java.util.Map;

import shop.model.Shoplist;

public interface ShoplistMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Shoplist record);

    int insertSelective(Shoplist record);

    Shoplist selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Shoplist record);

    int updateByPrimaryKey(Shoplist record);
    
    List <Shoplist> selectAll();
    
    Shoplist selectGoodsIsExist(Shoplist shop);
    
    int deleteBuyedGoods(Map<String,Object> map);
    
    List<Shoplist> selelctUserListByUserId(int id);
    
}