package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Instype;

import java.sql.SQLException;
import java.util.List;

public interface InstypeService {

    //查询全部乐器类型
    List<Instype> instypeList() throws SQLException;

    //根据id查询乐器类型
    Instype findInstypeById(Integer id) throws SQLException;

    //修改乐器类型信息
    Boolean instypeModify(Instype instype) throws SQLException;

}
