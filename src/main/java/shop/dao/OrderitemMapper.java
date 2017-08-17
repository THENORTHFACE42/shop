package shop.dao;

import java.util.List;

import shop.model.Orderitem;

public interface OrderitemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Orderitem record);

    int insertSelective(Orderitem record);

    Orderitem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Orderitem record);

    int updateByPrimaryKey(Orderitem record);
    
    List<Orderitem> selectOrderGoodsByOrderId(String id);
    
    int deleteGeneralOrder(String orderId);
}