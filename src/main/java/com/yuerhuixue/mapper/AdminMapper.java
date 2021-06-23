package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface AdminMapper {

    //登录
    Admin adminLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    Boolean adminRegister(Admin admin) throws SQLException;

    //查询所有管理员
    List<Admin> adminList() throws SQLException;

    //按id删除管理员
    Boolean adminDelete(Integer id) throws SQLException;

    //修改管理员信息
    Boolean adminModify(Admin admin) throws SQLException;

    //按id查询管理员
    Admin adminFindById(Integer id) throws SQLException;

}
