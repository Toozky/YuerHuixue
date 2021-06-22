package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Admin;

import java.sql.SQLException;

public interface AdminService{

    //登录
    public Admin adminLogin(String name, String pass) throws SQLException;

    //注册
    public boolean adminRegister(Admin admin) throws SQLException;

}
