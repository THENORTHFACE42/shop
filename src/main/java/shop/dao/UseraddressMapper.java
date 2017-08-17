package shop.dao;

import java.util.List;

import shop.model.Useraddress;

public interface UseraddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Useraddress record);

    int insertSelective(Useraddress record);

    Useraddress selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Useraddress record);

    int updateByPrimaryKey(Useraddress record);
    
    List<Useraddress> selectAddressListByUserid(int userid);
}