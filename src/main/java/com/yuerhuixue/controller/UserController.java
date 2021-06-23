package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.UserService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(@Qualifier("userServiceImpl") UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("userLogin.do")
    public String userLogin(String name, String pass, HttpSession session) throws SQLException {
        User user = userService.userLogin(name, pass);
        if (user!=null){
            session.setAttribute("user", user);
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

    @RequestMapping("userModify.do")
    public String userUpdate(User user, HttpSession session) throws SQLException {
        User userTemp = (User) session.getAttribute("user");
        user.setId(userTemp.getId());
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

    @RequestMapping("userLogout.do")
    public String userLogout(HttpSession session){
        session.removeAttribute("user");
        return "userlogin";
    }
}
