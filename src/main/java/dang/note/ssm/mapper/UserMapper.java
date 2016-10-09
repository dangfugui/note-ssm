package dang.note.ssm.mapper;

import dang.note.ssm.pojo.User;

public interface UserMapper {

    User login(User user);
    int insert(User user);
    User selectById(int id);


    //////////////////////////////////////////
//
//    int deleteByPrimaryKey(Integer id);
//
//   // int insert(User record);
//
//    int insertSelective(User record);
//
//    User selectByPrimaryKey(Integer id);
//
//    int updateByPrimaryKeySelective(User record);
//
//    int updateByPrimaryKey(User record);
//
//    User selectId(int id);
//
//	User selectLogin(String username);


}