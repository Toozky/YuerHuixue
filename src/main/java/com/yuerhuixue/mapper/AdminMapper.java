package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface AdminMapper {

    //登录
    public Admin adminLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    public Boolean adminRegister(Admin admin) throws SQLException;

    //查询所有管理员
    public List<Admin> adminList() throws SQLException;

    //按id删除管理员
    public Boolean adminDelete(Integer id) throws SQLException;

    //修改管理员信息
    public Boolean adminModify(Admin admin) throws SQLException;

    //按id查询管理员
    public Admin adminFindById(Integer id) throws SQLException;

}
