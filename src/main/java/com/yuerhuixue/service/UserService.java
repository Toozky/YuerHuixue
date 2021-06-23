package com.yuerhuixue.service;

import com.yuerhuixue.pojo.User;

import java.sql.SQLException;

public interface UserService{

    //登录
    User userLogin(String name, String pass) throws SQLException;

    //注册
    Boolean userRegister(User user) throws SQLException;

    //修改个人信息
    Boolean userModify(User user) throws SQLException;

    //删除用户
    Boolean userDelete(User user) throws SQLException;

}
