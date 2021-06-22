package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping("userLogin.do")
    public String userLogin(String name, String pass) throws SQLException {

        List<User> users = userService.findAllUser();
        System.out.println(users);

        User user = userService.userLogin(name, pass);
        System.out.println(user);

        if (user!=null){
            return "usersuccessful";
        }else {
            return "userlogin";
        }
    }

    @RequestMapping("userRegister.do")
    public String  userRegister(User user) throws SQLException {
        Boolean b = userService.userRegister(user);
        if (b){
            return "userlogin";
        }else {
            return "userlogin";
        }
    }
}
