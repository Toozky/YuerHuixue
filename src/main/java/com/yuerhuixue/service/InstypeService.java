package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Instype;

import java.sql.SQLException;
import java.util.List;

public interface InstypeService {

    //查询全部乐器类型
    List<Instype> instypeList() throws SQLException;

}
