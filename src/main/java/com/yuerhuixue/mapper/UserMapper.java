package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface UserMapper {

    //登录
    User userLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    Boolean userRegister(User user) throws SQLException;

    //修改个人信息
    Boolean userModify(User user) throws SQLException;

    //删除用户
    Boolean userDelete(User user) throws SQLException;

}
