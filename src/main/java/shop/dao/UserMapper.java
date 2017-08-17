package shop.dao;

import shop.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    String findPassWordByUserName(String UserName);
    
    int selectIdByUserName(String UserName);
    
}