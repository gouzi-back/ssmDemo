package com.service;







import com.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Auther:haha
 * @Date:2021/2/1 - 02 - 01 20:44
 * @Description:com.service
 * @Version: 1.0
 */

public interface UserService {
        public User select(Integer id);

        //增加用户
        int addUser(User user);
        //删除用户
        int deleteUserById( int id);
        //更新用户
        int updateUser(User user);
        //查询一个用户
        User selectUserById( int id);
        //查询全部用户
        List<User> selectAllUser();

        List<User> selectByName( String userName);
}
