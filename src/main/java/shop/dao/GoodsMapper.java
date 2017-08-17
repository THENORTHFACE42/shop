package shop.dao;

import java.util.List;
import java.util.Map;

import shop.model.Goods;
import shop.model.PageBean;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> selectToptenGoods(int bigTypeId);
    
    List<Goods> selectTopsixGoods(int bigTypeId);
    
    List<Goods> selectSalesTopfiveGoods();
    
    PageBean selectGoodsPage(Map<String, Object> map);
    
}