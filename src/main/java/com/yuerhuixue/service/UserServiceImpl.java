package com.yuerhuixue.service;

import com.yuerhuixue.mapper.UserMapper;
import com.yuerhuixue.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User userLogin(String name, String pass) throws SQLException {
        return userMapper.userLogin(name, pass);
    }

    @Override
    public boolean userRegister(User user) throws SQLException {
        return userMapper.userRegister(user);
    }

    @Override
    public List<User> findAllUser() throws SQLException {
        return userMapper.findAllUser();
    }

}
