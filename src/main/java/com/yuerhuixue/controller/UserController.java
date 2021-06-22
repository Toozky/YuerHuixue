package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;

@Controller
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping("userLogin.do")
    public String userLogin(String name, String pass, HttpSession session) throws SQLException {
        User user = userService.userLogin(name, pass);
        System.out.println(user);
        if (user!=null){
            session.setAttribute("user", user);
            return "usersuccessful";
        }else {
            return "userlogin";
        }
    }

    @RequestMapping("userRegister.do")
    public String  userRegister(String name, String tel, String email, String address, String pass) throws SQLException {
        User user = new User(name, tel, email, address, pass);
        Boolean b = userService.userRegister(user);
        if (b){
            return "userlogin";
        }else {
            return "userlogin";
        }
    }

    @RequestMapping("userModify.do")
    public String userUpdate(String name, String tel, String email, String address, String pass, HttpSession session) throws SQLException {
        User user = new User(name, tel, email, address, pass);
        Boolean b = userService.userModify(user);
        if (b){
            session.setAttribute("user", user);
            return "usersuccessful";
        }else {
            return "usermodify";
        }
    }

    @RequestMapping("userDelete.do")
    public String userDelete(HttpSession session) throws SQLException {
        User user = (User) session.getAttribute("user");
        Boolean b = userService.userDelete(user);
        if (b){
            session.removeAttribute("user");
            return "userlogin";
        }else {
            return "usersuccessful";
        }
    }

    @RequestMapping("logout.do")
    public String userLogout(HttpSession session){
        session.removeAttribute("user");
        return "userlogin";
    }
}
