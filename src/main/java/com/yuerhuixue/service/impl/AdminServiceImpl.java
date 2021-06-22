package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.AdminMapper;
import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin adminLogin(String name, String pass) throws SQLException {
        return adminMapper.adminLogin(name, pass);
    }

    @Override
    public boolean adminRegister(Admin admin) throws SQLException {
        return adminMapper.adminRegister(admin);
    }
}
