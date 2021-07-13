package com.yuerhuixue.service;

import com.yuerhuixue.pojo.User;
import org.apache.ibatis.annotations.Param;

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

    //根据用户名和手机号更改密码
    Boolean userForgetPass(String name, String tel, String pass) throws SQLException;

}
