package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

@Repository
public interface AdminMapper {

    //登录
    public Admin adminLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    public Boolean adminRegister(Admin admin) throws SQLException;

}
