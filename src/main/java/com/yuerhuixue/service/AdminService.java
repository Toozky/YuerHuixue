package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Admin;

import java.sql.SQLException;
import java.util.List;

public interface AdminService{

    //登录
    public Admin adminLogin(String name, String pass) throws SQLException;

    //注册
    public boolean adminRegister(Admin admin) throws SQLException;

    //查询所有管理员
    public List<Admin> adminList() throws SQLException;

    //根据id删除管理员
    public Boolean adminDelete(Integer id) throws SQLException;

    //修改管理员信息
    public Boolean adminModify(Admin admin) throws SQLException;

    //按id查询管理员
    public Admin adminFindById(Integer id) throws SQLException;
}
