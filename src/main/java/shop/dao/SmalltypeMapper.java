package shop.dao;

import java.util.List;

import shop.model.Smalltype;

public interface SmalltypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Smalltype record);

    int insertSelective(Smalltype record);

    Smalltype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Smalltype record);

    int updateByPrimaryKey(Smalltype record);
    
    List<Smalltype> selectByBigTypeId(Integer bigTypeId);
    
    
}