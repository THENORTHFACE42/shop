package shop.dao;

import java.util.List;

import shop.model.Myfootprint;

public interface MyfootprintMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Myfootprint record);

    int insertSelective(Myfootprint record);

    Myfootprint selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Myfootprint record);

    int updateByPrimaryKey(Myfootprint record);
    
    List<Myfootprint> selectAllByUserid(int userid);
    
    int deleteAllfootprintByUserid(int userid);
    
    Myfootprint selectIsExist(Myfootprint m);
}