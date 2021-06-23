package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.pojo.User;

import java.sql.SQLException;
import java.util.List;

public interface AdminService{

    //登录
    Admin adminLogin(String name, String pass) throws SQLException;

    //注册
    boolean adminRegister(Admin admin) throws SQLException;

    //查询所有管理员
    List<Admin> adminList() throws SQLException;

    //根据id删除管理员
    Boolean adminDelete(Integer id) throws SQLException;

    //修改管理员信息
    Boolean adminModify(Admin admin) throws SQLException;

    //按id查询管理员
    Admin adminFindById(Integer id) throws SQLException;

    //查询所有用户
    List<User> adminFindUsers() throws SQLException;

    //根据id查询用户
    User adminFindUserById(Integer id) throws SQLException;

    //修改用户信息
    Boolean adminUpadteUser(User user) throws SQLException;

    //按id删除用户
    Boolean adminDeleteUserById(Integer id) throws SQLException;

    //添加用户
    Boolean adminInsertUser(User user) throws SQLException;
}
