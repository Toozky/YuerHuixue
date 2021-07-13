package com.yuerhuixue.mapper;

import com.yuerhuixue.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

@Repository
public interface UserMapper {

    //登录
    User userLogin(@Param("name") String name, @Param("pass") String pass) throws SQLException;

    //注册
    Boolean userRegister(User user) throws SQLException;

    //修改用户信息
    Boolean userModify(User user) throws SQLException;

    //删除用户
    Boolean userDelete(User user) throws SQLException;

    //根据ID查姓名
    String userNameFindById(@Param("user_id")Integer id) throws SQLException;

    //根据用户名和手机号查询id
    Integer userIdFindByNameAndTel(@Param("name") String name, @Param("tel") String tel) throws SQLException;

    //根据id修改密码
    Boolean userPassModify(@Param("id") Integer id, @Param("pass") String pass) throws SQLException;

}
