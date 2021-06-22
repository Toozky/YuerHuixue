package com.yuerhuixue.service;

import com.yuerhuixue.pojo.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService{

    //登录
    public User userLogin(String name, String pass) throws SQLException;

    //注册
    public boolean userRegister(User user) throws SQLException;

}
