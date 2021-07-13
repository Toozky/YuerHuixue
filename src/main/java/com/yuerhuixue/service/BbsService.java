package com.yuerhuixue.service;

import com.yuerhuixue.pojo.Bbs;

import java.sql.SQLException;
import java.util.List;

public interface BbsService {
    //查看社区
    List<Bbs> shequList() throws SQLException;
    //添加社区信息
    Boolean shequInsert(Bbs shequadd) throws SQLException;

}
