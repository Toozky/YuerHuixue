package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.AdminMapper;
import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(String name, String pass) throws SQLException {
        return adminMapper.adminLogin(name, pass);
    }

    @Override
    public boolean adminRegister(Admin admin) throws SQLException {
        return adminMapper.adminRegister(admin);
    }

    @Override
    public List<Admin> adminList() throws SQLException {
        return adminMapper.adminList();
    }

    @Override
    public Boolean adminDelete(Integer id) throws SQLException {
        return adminMapper.adminDelete(id);
    }

    @Override
    public Boolean adminModify(Admin admin) throws SQLException {
        return adminMapper.adminModify(admin);
    }

    @Override
    public Admin adminFindById(Integer id) throws SQLException {
        return adminMapper.adminFindById(id);
    }

    @Override
    public List<User> adminFindUsers() throws SQLException {
        return adminMapper.adminFindUsers();
    }

    @Override
    public User adminFindUserById(Integer id) throws SQLException {
        return adminMapper.adminFindUserById(id);
    }

    @Override
    public Boolean adminUpadteUser(User user) throws SQLException {
        return adminMapper.adminUpadteUser(user);
    }

    @Override
    public Boolean adminDeleteUserById(Integer id) throws SQLException {
        return adminMapper.adminDeleteUserById(id);
    }

    @Override
    public Boolean adminInsertUser(User user) throws SQLException {
        return adminMapper.adminInsertUser(user);
    }
}
