package shop.dao;

import java.util.List;
import java.util.Map;

import shop.model.Collection;
import shop.model.PageBean;

public interface CollectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Collection record);

    int insertSelective(Collection record);

    Collection selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Collection record);

    int updateByPrimaryKey(Collection record);
    
    List<Collection> selectCollectionListByUserid(int userid);
    
    PageBean selectCountCollectionByUserid(int userid);
    List<Collection> selectCollectionPage(Map<String,Object> map);
    Collection selectIsExist(Collection c);
}