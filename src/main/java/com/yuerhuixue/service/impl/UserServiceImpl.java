package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.UserMapper;
import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User userLogin(String name, String pass) throws SQLException {
        return userMapper.userLogin(name, pass);
    }

    @Override
    public Boolean userRegister(User user) throws SQLException {
        return userMapper.userRegister(user);
    }

    @Override
    public Boolean userModify(User user) throws SQLException {
        return userMapper.userModify(user);
    }

    @Override
    public Boolean userDelete(User user) throws SQLException {
        return userMapper.userDelete(user);
    }

    @Override
    public Boolean userForgetPass(String name, String tel, String pass) throws SQLException {
        Integer id = userMapper.userIdFindByNameAndTel(name, tel);
        Boolean b = userMapper.userPassModify(id, pass);
        return b;
    }

}
