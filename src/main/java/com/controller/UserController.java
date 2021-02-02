package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @Auther:haha
 * @Date:2021/2/1 - 02 - 01 20:50
 * @Description:com.controller
 * @Version: 1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    //查询全部的用户
    @RequestMapping("/allUser")
    public String AllUserList(Model model) {
        List<User> list = userService.selectAllUser();
        model.addAttribute("list", list);

        return "allUser";
    }

    //跳转到新增用户页面
    @RequestMapping("/toAddUser")
    public String toAddUser(Model model) {


        return "addUser";
    }

    //新增用户的请求 用重定向
    @RequestMapping("/addUser")
    public String AddUser(User user) {

        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd ");
        userService.addUser(user);

        return "redirect:/user/allUser";//重定向dao  @RequestMapping("/allUser")
    }



    //跳转到修改页面
    @RequestMapping("/toUpdateUser")
    public String toUpdat(int id,Model model){

      User user= userService.selectUserById(id);
        model.addAttribute("user",user);
        return "updateUser";
    }

    //修改用户
    @RequestMapping("/updateUser")
    public String update(User user){
        userService.updateUser(user);
        return "redirect:/user/allUser";

    }

    //删除用户
    @RequestMapping("/deleteBook/{userId}")
    public String delete(@PathVariable("userId") int id){
        userService.deleteUserById(id);
        return "redirect:/user/allUser";

    }


    //查询用户
    @RequestMapping("/seleteUById")
    public String seleteById(String seleteUser,Model model){
       List<User>  list = userService.selectByName(seleteUser);

        System.out.println(list);

        if (list==null){
            list=userService.selectAllUser();
            model.addAttribute("error","没有找到该用户");
        }
        model.addAttribute("list", list);

        return "allUser";
    }

}

