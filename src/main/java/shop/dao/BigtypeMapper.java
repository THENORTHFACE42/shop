package shop.dao;

import java.util.List;

import shop.model.Bigtype;

public interface BigtypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bigtype record);

    int insertSelective(Bigtype record);

    Bigtype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bigtype record);

    int updateByPrimaryKey(Bigtype record);
    
    List<Bigtype> findAll();
}