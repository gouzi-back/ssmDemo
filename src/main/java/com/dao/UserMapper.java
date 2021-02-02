package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther:haha
 * @Date:2021/2/1 - 02 - 01 20:40
 * @Description:com.dao
 * @Version: 1.0
 */
public interface UserMapper {
    public User getUserList1(Integer id);

    //增加用户
    int addUser(User user);
    //删除用户
    int deleteUserById(@Param("userId") int id);
    //更新用户
    int updateUser(User user);
    //查询一个用户
    User selectUserById(@Param("userId") int id);
    //查询全部用户
    List<User> selectAllUser();

    List<User> selectByName(@Param("userName") String userName);
}
