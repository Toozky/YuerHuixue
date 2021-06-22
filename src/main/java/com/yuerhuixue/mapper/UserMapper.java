package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface UserMapper {

    //登录
    public User userLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    public boolean userRegister(User user) throws SQLException;

}
